using GRIBDatasets
using Dates
using Test
using GRIBDatasets: getone
using GRIBDatasets: Variable
using GRIBDatasets: DATA_ATTRIBUTES_KEYS, GRID_TYPE_MAP
using GRIBDatasets: _to_datetime
using GRIBDatasets: DiskValues, Variable, CFVariable
using GRIBDatasets: CDM

@testset "dataset and variables" begin
    grib_path = joinpath(dir_testfiles, "era5-levels-members.grib")
    
    ds = GRIBDataset(grib_path)
    dsmis = GRIBDataset(joinpath(dir_testfiles, "fields_with_missing_values.grib"))
    index = ds.index

    varstring = "z"
    @testset "CommonDataModel implementation" begin
        @test CDM.dim(ds, "number") == 10
        @test length(CDM.dimnames(ds)) == 5
        @test CDM.dims(ds) isa AbstractDict
        @test CDM.dims(ds)["number"] == 10

        var = ds["z"]
        @test length(CDM.dimnames(var)) == 5
    end

    @testset "dataset indexing" begin
        vars = keys(ds)
        @test vars[1] == "lon"
        @test GDS.getlayersname(ds)[1] == "z"
        @test length(ds.dims) == 5
        @test ds.attrib["centre"] == getone(index, "centre")
    end

    @testset "dim as variable" begin
        @testset "message dim" begin
            dimvar =  Variable(ds, "lon")
            @test dimvar isa Variable
            @test collect(dimvar) isa AbstractArray
            @test dimvar[1:2] == [0., 3.]
        end

        @testset "indexed dim" begin
            dimvar = Variable(ds, "number")
            @test dimvar isa Variable
            @test collect(dimvar) isa AbstractArray
            @test dimvar[1:2] == [0, 1]
        end

        @testset "vertical dim" begin
            dimvar = Variable(ds, "isobaricInhPa")
            @test dimvar isa Variable
            @test collect(dimvar) isa AbstractArray
            @test dimvar[1:2] == [500, 850]
        end
    end

    @testset "variable indexing" begin
        @test ds[varstring] isa CFVariable

        layer = Variable(ds, varstring)
        @test layer isa AbstractArray
        @test layer[:,:,1,1,1] isa AbstractMatrix
        lsize = size(layer)
        @test layer[lsize...] isa Number

        #indexing on the message dimensions
        @test layer[1:10, 2:4, 1, 1, 1] isa AbstractArray{<:Any, 2}
        #indexing on the other dimensions
        @test layer[1, 1, 1:2, 1:3, 1:2] isa AbstractArray{<:Any, 3}
        #indexing on the all dimensions
        @test layer[5:10, 2:4, 1:2, 1:3, 1:2] isa AbstractArray{<:Any, 5}

        @testset "with missing values" begin
            t2m = Variable(dsmis, "t2m")
            misval = GDS.missing_value(t2m)
            ht2m = t2m[:,:,1,1]
            @test ht2m isa Matrix{Float64}
            @test any(ht2m .== misval)
        end

        @testset "cfvariable and missing" begin
            cfvar = CFVariable(ds, varstring)
            cfvarmis = CFVariable(dsmis, "t2m")
            A = cfvar[:,:,1,1,1]
            Amis = cfvarmis[:,:,1,1]
            @test eltype(A) == Float64
            @test eltype(Amis) == Union{Missing, Float64}
        end

        @testset "cfvariable coordinate" begin
            cflon = CFVariable(ds, "lon")
            length(cflon[:]) == 120
            cfnum = CFVariable(ds, "number")
            length(cfnum[:]) == 10
        end
    end

    @testset "variable indexing with redundant level" begin
        ds2 = GRIBDataset(joinpath(dir_testfiles, "ENH18080914"))
        u = ds2["u"]
        @test u[:,:, 1, 1] isa AbstractArray{<:Any, 2}
        @test_throws BoundsError u[:,:,1,2]
        u10 = ds2["u10"]
        @test GDS._dim_values(GDS._get_dim(u10, "heightAboveGround_2")) == [10]
        t2m = ds2["t2m"]
        @test GDS._dim_values(GDS._get_dim(t2m, "heightAboveGround")) == [2]
    end

    @testset "upfront filtering" begin
        only_first_member = Dict("number" => 1)
        dsf = GRIBDataset(grib_path; filter_by_values = only_first_member)
        length(dsf["number"]) == 1
    end

    @testset "variable attributes" begin
        layer = Variable(ds, varstring)
        @test layer.attrib["cfName"] == GDS.getone(GDS.filter_messages(index; shortName=varstring), "cfName")
    end

    @testset "cfvariable attributes" begin
        cflayer = ds[varstring]
        @test cflayer.attrib["standard_name"] == GDS.getone(GDS.filter_messages(index; shortName=varstring), "cfName")
        @test ds["lon"].attrib["standard_name"] == "longitude"
    end

    @testset "utils" begin
        todt = _to_datetime.(ds["valid_time"])
        @test todt[1] == DateTime("2017-01-01T00:00:00")
        @test length(todt) == 4
    end
end

@testset "test all files" begin
    for testfile in test_files
        println("Testing: ", testfile)
        index = FileIndex(testfile)
        println("grid type: ", first(index["gridType"]))
        @time ds = GRIBDataset(testfile)
    end

end
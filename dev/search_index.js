var documenterSearchIndex = {"docs":
[{"location":"file_index/#Indexing-the-GRIB-file","page":"FileIndex","title":"Indexing the GRIB file","text":"","category":"section"},{"location":"file_index/","page":"FileIndex","title":"FileIndex","text":"The FileIndex object is used to keep the values of some of the GRIB keys into memory. The keys to be kept are defined with the index_keys keyword argument (by default, GRIBDatasets.ALL_KEYS). It is also possible to filter on specific values for the keys with the filter_by_values keyword argument. This can significantly improve the performance for reading the file:","category":"page"},{"location":"file_index/","page":"FileIndex","title":"FileIndex","text":"using GRIBDatasets\nusing BenchmarkTools\n\ndir_tests = abspath(joinpath(dirname(pathof(GRIBDatasets)), \"..\", \"test\"))\ngrib_path = abspath(joinpath(dir_tests, \"sample-data\", \"era5-levels-members.grib\"))\nnothing #hide","category":"page"},{"location":"file_index/","page":"FileIndex","title":"FileIndex","text":"only_geopotential_on_500_hPa  = Dict(\n    \"cfVarName\" => \"z\",\n    \"level\" => 500,\n)\n@btime filtered_index = FileIndex(grib_path; filter_by_values = only_geopotential_on_500_hPa);\n\n@btime index = FileIndex(grib_path);","category":"page"},{"location":"","page":"Home","title":"Home","text":"CurrentModule = GRIBDatasets","category":"page"},{"location":"#GRIBDatasets","page":"Home","title":"GRIBDatasets","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Documentation for GRIBDatasets.","category":"page"},{"location":"internals/#Internals","page":"Internals","title":"Internals","text":"","category":"section"},{"location":"internals/","page":"Internals","title":"Internals","text":"","category":"page"},{"location":"internals/","page":"Internals","title":"Internals","text":"Modules = [GRIBDatasets]","category":"page"},{"location":"internals/#GRIBDatasets.COMPUTED_KEYS","page":"Internals","title":"GRIBDatasets.COMPUTED_KEYS","text":"Dictionary which maps a key to a conversion method. The first function is the 'to' conversion, the second is 'from'.\n\nCurrently converts:\n\n    \"time\" => (from_grib_date_time, to_grib_date_time)\n\n    \"valid_time\" => (\n        message -> from_grib_date_time(message, date_key=\"validityDate\", time_key=\"validityTime\"),\n        message -> to_grib_date_time(message, date_key=\"validityDate\", time_key=\"validityTime\"),\n    )\n\n    \"verifying_time\" => (from_grib_month, m -> throw(ErrorException(\"Unimplemented\")))\n\n    \"indexing_time\" => (\n        message -> from_grib_date_time(message, date_key=\"indexingDate\", time_key=\"indexingTime\"),\n        message -> to_grib_date_time(message, date_key=\"indexingDate\", time_key=\"indexingTime\"),\n    )\n\nExample\n\nA GRIB message containing 20160501 as the date key and 0 as the time key would end up calling:\n\njulia> GDS.COMPUTED_KEYS[\"time\"][1](20160501, 0)\n1462060800\n\n\n\n\n\n","category":"constant"},{"location":"internals/#GRIBDatasets.GRIB_STEP_UNITS_TO_SECONDS","page":"Internals","title":"GRIBDatasets.GRIB_STEP_UNITS_TO_SECONDS","text":"const GRIB_STEP_UNITS_TO_SECONDS\n\nArray used to convert the grib step units to seconds.  Taken from eccodes stepUnits.table.\n\n\n\n\n\n","category":"constant"},{"location":"internals/#GRIBDatasets.ArtificialDimension","page":"Internals","title":"GRIBDatasets.ArtificialDimension","text":"ArtificialDimension <: AbstractDim\n\nThis type needs to be used when it is needed to create an artificial dimension. Typically this happens when some variables are defined on a similar type of level, but not on the same level values. For example, u10 and t2 are both defined on heightAboveGround, but the first is only defined at 10m and the second at 2m. In that case a height and a  height_2 level will be created.\n\n\n\n\n\n","category":"type"},{"location":"internals/#GRIBDatasets.DiskValues","page":"Internals","title":"GRIBDatasets.DiskValues","text":"DiskValues{T, N, M} <: DA.AbstractDiskArray{T, N}\n\nObject that maps the dimensions lookup to GRIB messages offsets. message_dims are the dimensions that are found in the GRIB message (namely longitudes and latitudes). other_dims are the dimensions that have been infered from reading the GRIB file index.\n\nExample\n\njulia> dv.other_dims\nDimensions:\n         number = 10\n         valid_time = 4\n         level = 2\n\njulia> size(dv.offsets)\n(10, 4, 2)\njulia> dv.message_dims\nDimensions:\n         longitude = 120\n         latitude = 61\n\n\n\n\n\n","category":"type"},{"location":"internals/#GRIBDatasets.DiskValues-Union{Tuple{T}, Tuple{GRIBDataset, FileIndex{T}, Tuple{GRIBDatasets.AbstractDim, Vararg{GRIBDatasets.AbstractDim}}}} where T","page":"Internals","title":"GRIBDatasets.DiskValues","text":"DiskValues(layer_index::FileIndex{T}, dims::Dimensions) where T\n\nCreate a DiskValues object from matching the GRIB messages headers in layer_index to the dimensions values in dims.\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.FileIndex","page":"Internals","title":"GRIBDatasets.FileIndex","text":"Store for the messages of a GRIB file. Keeps track of the offset of the GRIB messages so they can be easily seeked. The unique_headers property gives all the different values for the keys in the GRIB file. \n\n\n\n\n\n","category":"type"},{"location":"internals/#GRIBDatasets.FileIndex-Tuple{String}","page":"Internals","title":"GRIBDatasets.FileIndex","text":"FileIndex(grib_path::String; index_keys = ALL_KEYS, filter_by_values = Dict())\n\nConstruct a FileIndex for the file grib_path, storing only the keys in index_keys. It is possible to read only specific values by specifying them in filter_by_values. The values of the headers can be accessed with getindex.\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.GRIBDataset","page":"Internals","title":"GRIBDatasets.GRIBDataset","text":"GRIBDataset{T, N}\n\nMapping of a GRIB file to a structure that follows the CF conventions.\n\nIt can be created with the path to the GRIB file:\n\nds = GRIBDataset(example_file);\n\n\n\n\n\n","category":"type"},{"location":"internals/#GRIBDatasets.IndexedDimension","page":"Internals","title":"GRIBDatasets.IndexedDimension","text":"IndexedDimension <: AbstractDim\n\nDimension created from reading the index values with the keys in the COORDINATE_VARIABLES_KEYS constant.\n\n\n\n\n\n","category":"type"},{"location":"internals/#GRIBDatasets.MessageDimension","page":"Internals","title":"GRIBDatasets.MessageDimension","text":"MessageDimension <: AbstractDim\n\nOne dimension found in the data part of the GRIB message. Typically, this is lon and lat dimensions.\n\n\n\n\n\n","category":"type"},{"location":"internals/#GRIBDatasets.MessageIndex","page":"Internals","title":"GRIBDatasets.MessageIndex","text":"MessageIndex\n\nStored information about a GRIB message. The keys can be accessed with getindex. The message offset and length are stored as property of the struct.\n\n\n\n\n\n","category":"type"},{"location":"internals/#GRIBDatasets.MessageIndex-Tuple{GRIB.Message}","page":"Internals","title":"GRIBDatasets.MessageIndex","text":"MessageIndex(message::GRIB.Message; index_keys = ALL_KEYS)\n\nRead a GRIB message and store the requested index_keys in memory as a MessageIndex. \n\nf = GribFile(example_file) \nmessage = first(f)\nmind = GDS.MessageIndex(message)\ndestroy(f)\nmind[\"name\"]\n\n# output\n\"Geopotential\"\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.NonRegularGrid","page":"Internals","title":"GRIBDatasets.NonRegularGrid","text":"NonRegularGrid <: Horizontal\n\nRepresent non-regular grid types. The typical messages data is a 2-D matrix.\n\n\n\n\n\n","category":"type"},{"location":"internals/#GRIBDatasets.OtherGrid","page":"Internals","title":"GRIBDatasets.OtherGrid","text":"OtherGrid <: Horizontal\n\nRepresent non-regular grid types, where the typical messages data is a 1-D vector.\n\n\n\n\n\n","category":"type"},{"location":"internals/#GRIBDatasets.RegularGrid","page":"Internals","title":"GRIBDatasets.RegularGrid","text":"RegularGrid <: Horizontal\n\nRepresent regular grid types (typically regularll and regulargg). The typical messages data is a 2-D matrix.\n\n\n\n\n\n","category":"type"},{"location":"internals/#GRIBDatasets.Variable","page":"Internals","title":"GRIBDatasets.Variable","text":"Variable <: AbstractArray\n\nVariable of a dataset ds. It can be a layer or a dimension. In case of a layer, the values are lazily loaded when it's sliced.\n\n\n\n\n\n","category":"type"},{"location":"internals/#Base.length-Tuple{FileIndex}","page":"Internals","title":"Base.length","text":"length(index::FileIndex)\n\nThe number of messages in the index.\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets._add_headers!-Tuple{Any, Any}","page":"Internals","title":"GRIBDatasets._add_headers!","text":"Push the values of the message headers if they don't exist in the dictionnary d\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.additional_coordinates_varnames-Tuple{Tuple{GRIBDatasets.AbstractDim, Vararg{GRIBDatasets.AbstractDim}}}","page":"Internals","title":"GRIBDatasets.additional_coordinates_varnames","text":"additional_coordinates_varnames(dims::Dimensions)\n\nIn case of irregular grids, eccodes might provide the longitude and latitude. If so, this will then be stored as additionnal variables.\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.build_valid_time","page":"Internals","title":"GRIBDatasets.build_valid_time","text":"Returns a pair of (dims, data) based on the type of input\n\n\n\n\n\n","category":"function"},{"location":"internals/#GRIBDatasets.build_valid_time-Tuple{Int64, Int64}","page":"Internals","title":"GRIBDatasets.build_valid_time","text":"julia> GDS.build_valid_time(10, 10)\n((), 36010)\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.build_valid_time-Tuple{Int64, Vector{Int64}}","page":"Internals","title":"GRIBDatasets.build_valid_time","text":"julia> GDS.build_valid_time(1, [10])\n((\"step\",), [36001])\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.build_valid_time-Tuple{Vector{Int64}, Int64}","page":"Internals","title":"GRIBDatasets.build_valid_time","text":"julia> GDS.build_valid_time([10], 10)\n((\"time\",), [36010])\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.build_valid_time-Tuple{Vector{Int64}, Vector{Int64}}","page":"Internals","title":"GRIBDatasets.build_valid_time","text":"julia> GDS.build_valid_time([10, 10], [10, 10])\n((\"time\", \"step\"), [36010 36010; 36010 36010])\n\njulia> GDS.build_valid_time([10], [10])\n((), 36010)\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.filter_messages-Union{Tuple{T}, Tuple{FileIndex{T}, Vararg{Any}}} where T","page":"Internals","title":"GRIBDatasets.filter_messages","text":"filter_messages(index::FileIndex{T}, args...; kwargs...)\n\nFilter the messages in the index and return a new updated index. The filtering keys must be expressed as keyword arguments pair.\n\nindex = FileIndex(example_file)\n\nfiltered = GRIBDatasets.filter_messages(index, shortName = \"z\", number = 1)\nlength(filtered)\n\n# output\n8\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.from_grib_date_time-Tuple{Int64, Int64}","page":"Internals","title":"GRIBDatasets.from_grib_date_time","text":"from_grib_date_time(date::Int, time::Int; epoch::DateTime=DEFAULT_EPOCH)\n\nSeconds from epoch to the given date and time.\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.from_grib_month","page":"Internals","title":"GRIBDatasets.from_grib_month","text":"from_grib_month\n\nReturns the integer seconds from the epoch to the verifying month value in the GRIB message.\n\n\n\n\n\n","category":"function"},{"location":"internals/#GRIBDatasets.from_grib_step","page":"Internals","title":"GRIBDatasets.from_grib_step","text":"from_grib_step(message::GRIB.Message, step_key::String=\"endStep\", step_unit_key::String=\"stepUnits\")\n\nReturns the step_key value in hours.\n\n\n\n\n\n","category":"function"},{"location":"internals/#GRIBDatasets.get_values_from_filtered-Tuple{Any, Any, Any}","page":"Internals","title":"GRIBDatasets.get_values_from_filtered","text":"get_values_from_filtered(index, key, tocheck)\n\nFor each index values in key, give the values in tocheck related with it.\n\nindex = FileIndex(example_file)\n\nGDS.get_values_from_filtered(index, \"cfVarName\", \"level\")\n\n# output\nDict{SubString{String}, Vector{Any}} with 2 entries:\n  \"t\" => [500, 850]\n  \"z\" => [500, 850]\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.getone-Tuple{FileIndex, AbstractString}","page":"Internals","title":"GRIBDatasets.getone","text":"getone(index::FileIndex, key::AbstractString)\n\nCheck if only one value exists in the index at the specified ´key´ and return the value.\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.messages_indices-Tuple{FileIndex, Tuple{GRIBDatasets.AbstractDim, Vararg{GRIBDatasets.AbstractDim}}}","page":"Internals","title":"GRIBDatasets.messages_indices","text":"message_indices(index::FileIndex, mind::MessageIndex, dims::Dimensions)\n\nFind at which indices in dims correspond each GRIB message in index.\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.read_message-Tuple{GRIB.Message, String}","page":"Internals","title":"GRIBDatasets.read_message","text":"read_message(message::GRIB.Message, key::String)\n\nRead a specific key from a GRIB.jl message. Attempts to convert the raw value associated with that key using the COMPUTED_KEYS mapping to from_grib_* functions.\n\n\n\n\n\n","category":"method"}]
}

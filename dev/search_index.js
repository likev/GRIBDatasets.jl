var documenterSearchIndex = {"docs":
[{"location":"","page":"Home","title":"Home","text":"CurrentModule = GRIBDatasets","category":"page"},{"location":"#GRIBDatasets","page":"Home","title":"GRIBDatasets","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Documentation for GRIBDatasets.","category":"page"},{"location":"","page":"Home","title":"Home","text":"FileIndex\nMessageIndex","category":"page"},{"location":"#GRIBDatasets.FileIndex","page":"Home","title":"GRIBDatasets.FileIndex","text":"Store for the messages of a GRIB file. Keeps track of the offset of the GRIB messages so they can be easily seeked. The unique_headers property gives all the different values for the keys in the GRIB file. \n\n\n\n\n\n","category":"type"},{"location":"#GRIBDatasets.MessageIndex","page":"Home","title":"GRIBDatasets.MessageIndex","text":"MessageIndex\n\nStored information about a GRIB message.\n\n\n\n\n\n","category":"type"},{"location":"internals/#Internals","page":"Internals","title":"Internals","text":"","category":"section"},{"location":"internals/","page":"Internals","title":"Internals","text":"","category":"page"},{"location":"internals/","page":"Internals","title":"Internals","text":"Modules = [GRIBDatasets]","category":"page"},{"location":"internals/#GRIBDatasets.COMPUTED_KEYS","page":"Internals","title":"GRIBDatasets.COMPUTED_KEYS","text":"Dictionary which maps a key to a conversion method. The first function is the 'to' conversion, the second is 'from'.\n\nCurrently converts:\n\n    \"time\" => (from_grib_date_time, to_grib_date_time)\n\n    \"valid_time\" => (\n        message -> from_grib_date_time(message, date_key=\"validityDate\", time_key=\"validityTime\"),\n        message -> to_grib_date_time(message, date_key=\"validityDate\", time_key=\"validityTime\"),\n    )\n\n    \"verifying_time\" => (from_grib_month, m -> throw(ErrorException(\"Unimplemented\")))\n\n    \"indexing_time\" => (\n        message -> from_grib_date_time(message, date_key=\"indexingDate\", time_key=\"indexingTime\"),\n        message -> to_grib_date_time(message, date_key=\"indexingDate\", time_key=\"indexingTime\"),\n    )\n\nExample\n\nA GRIB message containing 20160501 as the date key and 0 as the time key would end up calling:\n\njulia> GDS.COMPUTED_KEYS[\"time\"][1](20160501, 0)\n1462060800\n\n\n\n\n\n","category":"constant"},{"location":"internals/#GRIBDatasets.DEFAULT_EPOCH","page":"Internals","title":"GRIBDatasets.DEFAULT_EPOCH","text":"Dates.DateTime\n\nDefault epoch used for from_ and to_ methods, set to 1970-01-01T00:00:00.\n\n\n\n\n\n","category":"constant"},{"location":"internals/#GRIBDatasets.GRIB_STEP_UNITS_TO_SECONDS","page":"Internals","title":"GRIBDatasets.GRIB_STEP_UNITS_TO_SECONDS","text":"Vector{Union{Missing, Int64}}\n\nArray used to convert the grib step units to seconds. As Julia is 1-indexed, not 0 like Python, you should take care to correctly access the array, typically  just +1 to the step units before using it as an index.\n\nTaken from eccodes stepUnits.table.\n\n\n\n\n\n","category":"constant"},{"location":"internals/#GRIBDatasets.DiskValues","page":"Internals","title":"GRIBDatasets.DiskValues","text":"DiskValues{T, N, M} <: DA.AbstractDiskArray{T, N}\n\nObject that maps the dimensions lookup to GRIB messages offsets. message_dims are the dimensions that are found in the GRIB message (namely longitudes and latitudes). other_dims are the dimensions that have been infered from reading the GRIB file index.\n\nExample\n\njulia> dv.other_dims\nDimensions:\n         number = 10\n         level = 2\n\njulia> dv.offsets[3, 2]\n324720\n\n\n\n\n\n","category":"type"},{"location":"internals/#GRIBDatasets.DiskValues-Union{Tuple{T}, Tuple{GRIBDataset, FileIndex{T}, Tuple{Vararg{GRIBDatasets.Dimension}}}} where T","page":"Internals","title":"GRIBDatasets.DiskValues","text":"DiskValues(layer_index::FileIndex{T}, dims::Dimensions) where T\n\nCreate a DiskValues object from matching the GRIB messages headers in layer_index to the dimensions values in dims.\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.FileIndex-Tuple{String}","page":"Internals","title":"GRIBDatasets.FileIndex","text":"FileIndex(grib_path::String; index_keys = ALL_KEYS)\n\nConstruct a FileIndex for the file grib_path, storing only the keys in index_keys. The values of the headers can be accessed with getindex\n\nExample\n\nindex = FileIndex(example_file)\n\n# output\nFileIndex{Float64} with 160 messages\nHeaders summary:\nDict{AbstractString, Vector{Any}} with 39 entries:\n  \"edition\"                          => [1]\n  \"jDirectionIncrementInDegrees\"     => [3.0]\n  \"number\"                           => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]\n  \"time\"                             => [1483228800, 1483272000, 1483315200, 14…\n  \"dataType\"                         => [\"an\"]\n  \"stepUnits\"                        => [1]\n  \"subCentre\"                        => [0]\n  \"jPointsAreConsecutive\"            => [0]\n  \"level\"                            => [500, 850]\n  \"name\"                             => [\"Geopotential\", \"Temperature\"]\n  \"step\"                             => [0]\n  \"jScansPositively\"                 => [0]\n  \"latitudeOfLastGridPointInDegrees\" => [-90.0]\n  \"valid_time\"                       => [1483228800, 1483272000, 1483315200, 14…\n  \"dataDate\"                         => [20170101, 20170102]\n  \"iScansNegatively\"                 => [0]\n  \"numberOfPoints\"                   => [7320]\n  \"missingValue\"                     => [9999]\n  \"gridType\"                         => [\"regular_ll\"]\n  ⋮                                  => ⋮\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.MessageIndex-Tuple{GRIB.Message}","page":"Internals","title":"GRIBDatasets.MessageIndex","text":"MessageIndex(message::GRIB.Message; index_keys = ALL_KEYS)\n\nRead a GRIB message and store the requested index_keys in memory as a MessageIndex. The keys can be accessed with getindex.\n\nf = GribFile(example_file) \nmessage = first(f)\nmind = GDS.MessageIndex(message)\ndestroy(f)\nmind[\"name\"]\n\n# output\n\"Geopotential\"\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets._add_headers!-Tuple{Any, Any}","page":"Internals","title":"GRIBDatasets._add_headers!","text":"Push the values of the message headers if they don't exist in the dictionnary d\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.build_valid_time","page":"Internals","title":"GRIBDatasets.build_valid_time","text":"Returns a pair of (dims, data) based on the type of input\n\n\n\n\n\n","category":"function"},{"location":"internals/#GRIBDatasets.build_valid_time-Tuple{Int64, Int64}","page":"Internals","title":"GRIBDatasets.build_valid_time","text":"julia> GDS.build_valid_time(10, 10)\n((), 36010)\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.build_valid_time-Tuple{Int64, Vector{Int64}}","page":"Internals","title":"GRIBDatasets.build_valid_time","text":"julia> GDS.build_valid_time(1, [10])\n((\"step\",), [36001])\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.build_valid_time-Tuple{Vector{Int64}, Int64}","page":"Internals","title":"GRIBDatasets.build_valid_time","text":"julia> GDS.build_valid_time([10], 10)\n((\"time\",), [36010])\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.build_valid_time-Tuple{Vector{Int64}, Vector{Int64}}","page":"Internals","title":"GRIBDatasets.build_valid_time","text":"julia> GDS.build_valid_time([10, 10], [10, 10])\n((\"time\", \"step\"), [36010 36010; 36010 36010])\n\njulia> GDS.build_valid_time([10], [10])\n((), 36010)\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.from_grib_date_time","page":"Internals","title":"GRIBDatasets.from_grib_date_time","text":"Returns the integer seconds from epoch to the given date and time.\n\n\n\n\n\n","category":"function"},{"location":"internals/#GRIBDatasets.from_grib_date_time-Tuple{GRIB.Message}","page":"Internals","title":"GRIBDatasets.from_grib_date_time","text":"Pulls out the date and time from given keys and passes them to from_grib_date_time(::Int, ::Int)\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.from_grib_date_time-Tuple{Int64, Int64}","page":"Internals","title":"GRIBDatasets.from_grib_date_time","text":"\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.from_grib_month","page":"Internals","title":"GRIBDatasets.from_grib_month","text":"Returns the integer seconds from the epoch to the verifying month value in the GRIB message.\n\n\n\n\n\n","category":"function"},{"location":"internals/#GRIBDatasets.from_grib_step","page":"Internals","title":"GRIBDatasets.from_grib_step","text":"Returns the step_key value in hours.\n\nUses GRIB_STEP_UNITS_TO_SECONDS to convert the step values to seconds, then divides by 3600.0 to get hours.\n\n\n\n\n\n","category":"function"},{"location":"internals/#GRIBDatasets.message_indices-Tuple{FileIndex, GRIBDatasets.MessageIndex, Tuple{Vararg{GRIBDatasets.Dimension}}}","page":"Internals","title":"GRIBDatasets.message_indices","text":"message_indices(index::FileIndex, mind::MessageIndex, dims::Dimensions)\n\nFind at which indices in dims correspond each GRIB message in index.\n\n\n\n\n\n","category":"method"},{"location":"internals/#GRIBDatasets.read_message-Tuple{GRIB.Message, String}","page":"Internals","title":"GRIBDatasets.read_message","text":"Reads a specific key from a GRIB.jl message. Attempts to convert the raw value associated with that key using the COMPUTED_KEYS mapping to from_grib_* functions.\n\n\n\n\n\n","category":"method"}]
}

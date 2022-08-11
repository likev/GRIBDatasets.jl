var documenterSearchIndex = {"docs":
[{"location":"","page":"Home","title":"Home","text":"CurrentModule = GRIBDatasets","category":"page"},{"location":"#GRIBDatasets","page":"Home","title":"GRIBDatasets","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Documentation for GRIBDatasets.","category":"page"},{"location":"","page":"Home","title":"Home","text":"","category":"page"},{"location":"","page":"Home","title":"Home","text":"Modules = [GRIBDatasets]","category":"page"},{"location":"#GRIBDatasets.COMPUTED_KEYS","page":"Home","title":"GRIBDatasets.COMPUTED_KEYS","text":"Dictionary which maps a key to a conversion method. The first function is the 'to' conversion, the second is 'from'.\n\nTODO: Actually applying the from_grib_step function results in different values to cfgrib.py, so step -> (from_grib_step, to_grib_step) is currently disabled.\n\nCurrently converts:\n\n    \"time\" => (from_grib_date_time, to_grib_date_time)\n\n    \"valid_time\" => (\n        message -> from_grib_date_time(message, date_key=\"validityDate\", time_key=\"validityTime\"),\n        message -> to_grib_date_time(message, date_key=\"validityDate\", time_key=\"validityTime\"),\n    )\n\n    \"verifying_time\" => (from_grib_month, m -> throw(ErrorException(\"Unimplemented\")))\n\n    \"indexing_time\" => (\n        message -> from_grib_date_time(message, date_key=\"indexingDate\", time_key=\"indexingTime\"),\n        message -> to_grib_date_time(message, date_key=\"indexingDate\", time_key=\"indexingTime\"),\n    )\n\nExample\n\nA GRIB message containing 20160501 as the date key and 0 as the time key would end up calling:\n\njulia> CfGRIB.COMPUTED_KEYS[\"time\"](20160501, 0)\n1462060800\n\n\n\n\n\n","category":"constant"},{"location":"#GRIBDatasets.DEFAULT_EPOCH","page":"Home","title":"GRIBDatasets.DEFAULT_EPOCH","text":"Dates.DateTime\n\nDefault epoch used for from_ and to_ methods, set to 1970-01-01T00:00:00.\n\n\n\n\n\n","category":"constant"},{"location":"#GRIBDatasets.GRIB_STEP_UNITS_TO_SECONDS","page":"Home","title":"GRIBDatasets.GRIB_STEP_UNITS_TO_SECONDS","text":"Vector{Union{Missing, Int64}}\n\nArray used to convert the grib step units to seconds. As Julia is 1-indexed, not 0 like Python, you should take care to correctly access the array, typically  just +1 to the step units before using it as an index.\n\nTaken from eccodes stepUnits.table.\n\n\n\n\n\n","category":"constant"},{"location":"#GRIBDatasets.FileIndex","page":"Home","title":"GRIBDatasets.FileIndex","text":"Store for indices of a GRIB file\n\n\n\n\n\n","category":"type"},{"location":"#GRIBDatasets._add_headers!-Tuple{Any, Any}","page":"Home","title":"GRIBDatasets._add_headers!","text":"Push the values of the message headers if they don't exist in the dictionnary d\n\n\n\n\n\n","category":"method"},{"location":"#GRIBDatasets.build_valid_time","page":"Home","title":"GRIBDatasets.build_valid_time","text":"Returns a pair of (dims, data) based on the type of input\n\n\n\n\n\n","category":"function"},{"location":"#GRIBDatasets.build_valid_time-Tuple{Int64, Int64}","page":"Home","title":"GRIBDatasets.build_valid_time","text":"julia> CfGRIB.build_valid_time(10, 10)\n((), 36010)\n\n\n\n\n\n","category":"method"},{"location":"#GRIBDatasets.build_valid_time-Tuple{Int64, Vector{Int64}}","page":"Home","title":"GRIBDatasets.build_valid_time","text":"julia> CfGRIB.build_valid_time(1, [10])\n((\"step\",), [36001])\n\n\n\n\n\n","category":"method"},{"location":"#GRIBDatasets.build_valid_time-Tuple{Vector{Int64}, Int64}","page":"Home","title":"GRIBDatasets.build_valid_time","text":"julia> CfGRIB.build_valid_time([10], 10)\n((\"time\",), [36010])\n\n\n\n\n\n","category":"method"},{"location":"#GRIBDatasets.build_valid_time-Tuple{Vector{Int64}, Vector{Int64}}","page":"Home","title":"GRIBDatasets.build_valid_time","text":"julia> CfGRIB.build_valid_time([10, 10], [10, 10])\n((\"time\", \"step\"), [36010 36010; 36010 36010])\n\njulia> CfGRIB.build_valid_time([10], [10])\n((), 36010)\n\n\n\n\n\n","category":"method"},{"location":"#GRIBDatasets.from_grib_date_time","page":"Home","title":"GRIBDatasets.from_grib_date_time","text":"Returns the integer seconds from epoch to the given date and time.\n\n\n\n\n\n","category":"function"},{"location":"#GRIBDatasets.from_grib_date_time-Tuple{GRIB.Message}","page":"Home","title":"GRIBDatasets.from_grib_date_time","text":"Pulls out the date and time from given keys and passes them to from_grib_date_time(::Int, ::Int)\n\n\n\n\n\n","category":"method"},{"location":"#GRIBDatasets.from_grib_date_time-Tuple{Int64, Int64}","page":"Home","title":"GRIBDatasets.from_grib_date_time","text":"\n\n\n\n","category":"method"},{"location":"#GRIBDatasets.from_grib_month","page":"Home","title":"GRIBDatasets.from_grib_month","text":"Returns the integer seconds from the epoch to the verifying month value in the GRIB message.\n\n\n\n\n\n","category":"function"},{"location":"#GRIBDatasets.from_grib_step","page":"Home","title":"GRIBDatasets.from_grib_step","text":"Returns the step_key value in hours.\n\nUses GRIB_STEP_UNITS_TO_SECONDS to convert the step values to seconds, then divides by 3600.0 to get hours.\n\n\n\n\n\n","category":"function"},{"location":"#GRIBDatasets.read_message-Tuple{GRIB.Message, String}","page":"Home","title":"GRIBDatasets.read_message","text":"Reads a specific key from a GRIB.jl message. Attempts to convert the raw value associated with that key using the COMPUTED_KEYS mapping to from_grib_* functions.\n\n\n\n\n\n","category":"method"}]
}

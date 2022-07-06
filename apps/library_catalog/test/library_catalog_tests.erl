-module(library_catalog_tests).
-include_lib("stdlib/include/assert.hrl").
-compile(nowarn_export_all).
-compile(export_all).

get_all_test() ->
    ?assertEqual(2, length(library_catalog:get_all())).

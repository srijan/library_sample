-module(library_inventory_tests).
-include_lib("stdlib/include/assert.hrl").
-compile(nowarn_export_all).
-compile(export_all).

get_all_test() ->
    ?assertEqual(3, length(library_inventory:get_all())).

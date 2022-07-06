-module(library_inventory_SUITE).
-include_lib("stdlib/include/assert.hrl").
-export([all/0]).
-export([get_all_test/1]).
 
all() -> [get_all_test].
 
get_all_test(_Config) ->
    ?assertEqual(4, length(library_inventory:get_all())).

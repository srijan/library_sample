-module(library_inventory).

-export([
         get_all/0,
         get_available_copies/1
        ]).

get_all() ->
    [
     #{
       id => 1,
       catalog_id => 1,
       available => true
      },
     #{
       id => 2,
       catalog_id => 1,
       available => true
      },
     #{
       id => 3,
       catalog_id => 2,
       available => false,
       return_date => "2021-04-01T00:00:00"
      },
     #{
       id => 4,
       catalog_id => 2,
       available => true
      }
    ].

get_available_copies(CatalogId) ->
    All = get_all(),
    lists:filter(
      fun(M) ->
              maps:get(catalog_id, M) == CatalogId andalso
                  maps:get(available, M) == true
      end, All).

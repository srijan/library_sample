-module(library_catalog).

-export([
         get_all/0,
         get_by_id/1
        ]).

get_all() ->
    [
     #{
       id => 1,
       title => "Anna Karenina",
       author => "Leo Tolstoy"
      },
     #{
       id => 2,
       title => "Great Expectations",
       author => "Charles Dickens"
      }
    ].

get_by_id(Id) ->
    All = get_all(),
    case lists:search(fun(M) -> maps:get(id, M) == Id end, All) of
        {value, V} ->
            Available = length(library_inventory:get_available_copies(Id)),
            maps:put(available_count, Available, V);
        false ->
            {error, notfound}
    end.

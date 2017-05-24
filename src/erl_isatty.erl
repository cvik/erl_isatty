-module(erl_isatty).
-export([isatty/1]).
-on_load(init/0).

init() ->
    erlang:load_nif("priv/erl_isatty", 0).

-spec isatty(integer()) -> boolean().
isatty(_Fd) ->
    exit(nif_library_not_loaded).

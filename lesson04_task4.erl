-module(lesson04_task4).
-export([run_tests/1]).

run_tests(Tool) ->
    case Tool of
        rebar3 -> os:cmd("rebar3 eunit");
        rebar2 -> os:cmd("rebar eunit");
        erlang_mk -> os:cmd("make test");
        _ -> {error, unsupported_tool}
    end.

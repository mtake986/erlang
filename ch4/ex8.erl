-module(ex8).
-export([countup/1]).

countup(Limit) ->
  countup(1, Limit).

countup(Count, Limit) when Count =< Limit ->
  io:format("~w!~n", [Count]),
  countup(Count+1, Limit);

countup(Count, Limit) ->
  io:format("Finished.~n").

% Question: Number of arguments differes functions?
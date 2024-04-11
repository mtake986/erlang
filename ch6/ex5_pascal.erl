-module(ex5_pascal).
-export([triangle/1]).

triangle(NumOfRows) -> triangle([[0, 1, 0]], 1, NumOfRows).

triangle(List, Count, NumOfRows) when Count >= NumOfRows -> lists:reverse(List);
triangle(List, Count, NumOfRows) ->
  [Prev | _] = List,
  triangle([add_row(Prev) | List], Count+1, NumOfRows).

add_row(Initial) -> add_row(Initial, 0, []).

add_row([], 0, Final) -> [0 | Final];
add_row([H | T], LastElement, CurrentList) -> add_row(T, H, [LastElement + H | CurrentList]).
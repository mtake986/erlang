-module(ex4_pascal).
-export([add_row/1]).

add_row(Initial) -> add_row(Initial, 0, []).

add_row([], 0, Final) -> [0 | Final];
add_row([H | T], Last, New) -> add_row(T, H, [Last + H | New]).

% [0,1,3,3,1,0], 0, []
% add_row([1,3,3,1,0], 0, [0+0|[]])
% add_row([3,3,1,0], 1, [0+1|[0]])
% add_row([3,1,0], 3, [1+3|[1, 0]])
% add_row([[1,0], 3, [3+3|[4, 1, 0]])
% add_row([0], 1, [3+1|[6, 4, 1, 0]])
% add_row([], 0, [1+0|4, 6, 4, 1, 0])
% [0 | [1, 4, 6, 4, 1, 0]);
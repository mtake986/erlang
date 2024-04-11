-module(ex1_overall).
-export([product/1]).

% These product/1 is one function with 2 of them
product([]) -> 0; % in case the list is empty, return zero.
product(List) -> product(List, 1).

product([], Product) -> Product; % when list empty, stop, report
product([H|T], Product) -> product(T, Product * H).
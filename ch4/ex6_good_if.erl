-module(ex6_good_if).
-export([good_case/1, good_if/1]).

good_case(Test_val) -> 
  case Test_val < 0 of 
    true -> X = 1;
    false -> X = 0
  end,
  case Test_val >= 0 of
    true -> Y = 2;
    false -> Y = 0
  end,

  X+Y.

good_if(Test_val) ->
  X = if
    Test_val < 0 -> 1;
    true -> 0
  end,
  Y = if
    Test_val >= 0 -> 2;
    true -> 0
  end,
  X+Y.
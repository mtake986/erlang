-module(ex6).
-export([bad_if/1]).

bad_if(Test_val) -> 

  if 
    Test_val < 0 -> X = 1;
    Test_val >= 0 -> Y = 2
  end.
  % end,

  % X+Y.
  
%%% The compilation errors turn up where your program actually uses the variables. The Erlang compiler double-checks to make sure the variables it’s about to put to use are properly defined. It won’t let you compile something that is broken.
%%% You can bind variables in an if or case construct, but you have to define all of the variables in every single clause. If you’re defining only one variable, it’s also much cleaner to bind the return value of the if or case clause to a variable instead of defining that variable in every clause.
%%% 
%%% -module(ex6).
%%% -export([good_if/1]).

%%%good_if(Test_val) -> 
%%%  case Test_val < 0 of
%%%    true -> X = 1;
%%%    false -> X = 0
%%%  end,
%%%  case Test_val >= 0 of
%%%    true -> Y = 2;
%%%    false -> Y = 0
%%%  end,
%%%  X + Y.

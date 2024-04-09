-module(combined).
-export([height_to_mph/1]).

-import(drop, [fall_velocity/1]).
-import(convert, [mps_to_mph/1]).
height_to_mph(Meters) -> convert:mps_to_mph(drop:fall_velocity(Meters)).

%%% those module names can get too verbose if you have a lot of calls to external modules
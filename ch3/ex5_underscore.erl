-module(ex5_underscore).
-export([fall_velocity/2, fall_velocity_underscore/2, fall_velocity_underscore_duplicate/3]).

fall_velocity(Planemo, Distance) -> math:sqrt(2 * 9.8 * Distance).
fall_velocity_underscore(_Planemo, Distance) -> math:sqrt(2 * 9.8 * Distance).
fall_velocity_underscore_duplicate(_Planemo, _Planemo, Distance) -> math:sqrt(2 * 9.8 * Distance).
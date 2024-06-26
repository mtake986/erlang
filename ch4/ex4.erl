-module(ex4).
-export([fall_velocity/2]).

fall_velocity(Planemo, Distance) when Distance >= 0 -> 
  Gravity = case Planemo of 
    earth -> 9.8;
    moon -> 1.6;
    mars -> 3.71
  end,

  Velocity = math:sqrt(2 * Gravity * Distance),

  if 
    Velocity == 0 -> "stable";
    Velocity < 5 -> 'slow';
    % Velocity < 10 -> 'fast';
    Velocity >= 5, Velocity < 10 -> 'moving';
    Velocity >= 10 -> 'sppedy'
  end.
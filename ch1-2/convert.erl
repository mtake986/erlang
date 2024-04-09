% about the module—its name and which functions it should make visible to other code that uses this module.
% -module(con). 
% Module name 'con' does not match file name 'convert'
-module(convert).
-export([mps_to_mph/1, mps_to_kph/1]).

mps_to_mph(Mps) -> 2.23693629 * Mps.
mps_to_kph(Mps) -> 3.6 * Mps.
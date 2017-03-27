// do not edit unless you know what you are doing!
#include "config.hpp"
#include "tf47_macros.hpp"

[] call tf47_misc_fnc_transfereUnits;
[ RADIOCHANNEL ] call tf47_misc_fnc_radiosettings;
[ TRACKING, SIDES, TYPES ] call tf47_misc_fnc_trackUnits;

if WHITELIST then{
  DTRACE_1("[ INFO ] > 'Whitelist' > Initialization ...");
  [] call tf47_whitelist_fnc_initServer;
  [] call tf47_whitelist_fnc_initClient;
};

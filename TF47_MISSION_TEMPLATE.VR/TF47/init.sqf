/********************************************************/
/********************************************************/
/*                                                      */
/*  do not edit unless you know what you are doing!     */
/*                                                      */
/********************************************************/
/********************************************************/
#include "tf47_macros.hpp"

// check wether tf47 settings hpp is present or not
if(isClass (missionConfigFile >> "tf47_settings") )then{
  if(isClass (missionConfigFile >> "cfgFunctions" >> "tf47_misc") )then{
    [] call tf47_misc_fnc_transfereUnits;
    [
      getNumber (missionConfigFile >> "tf47_settings" >> "radiosettings" >> "value")
    ] call tf47_misc_fnc_radiosettings;
    [
      getNumber (missionConfigFile >> "tf47_settings" >> "unitTracking" >> "value"),
      getArray (missionConfigFile >> "tf47_settings" >> "unitTracking_sides" >> "value"),
      getArray (missionConfigFile >> "tf47_settings" >> "unitTracking_types" >> "value")
    ] call tf47_misc_fnc_trackUnits;
  };
  if(isClass (missionConfigFile >> "cfgFunctions" >> "tf47_whitelist") )then{
    if(getNumber (missionConfigFile >> "tf47_settings" >> "whitelist" >> "value") > 0)then{
      DTRACE_1("[ INFO ] > 'Whitelist' > Initialization ...");
      [] call tf47_whitelist_fnc_initServer;
      [] call tf47_whitelist_fnc_initClient;
    };
  };
};

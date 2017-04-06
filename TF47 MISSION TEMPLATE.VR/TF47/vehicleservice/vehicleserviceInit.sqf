/*
*/
//Defines Start
//Turn on Debugmode
tf47_vehicleservice_debug = true; publicVariable "tf47_vehicleservice_debug";

//Check wether ACE is active
if (isClass(configFile >> "CfgPatches" >> "ace_main")) then {
  tf47_ace_active = true; publicVariable "tf47_ace_active";
} else {
  tf47_ace_active = false; publicVariable "tf47_ace_active";
};
//Check for @tf47_launchers
if (isClass(configFile >> "CfgPatches" >> "tf47_launchers")) then {
  tf47_tf47launchers_active = true; publicVariable "tf47_tf47launchers_active";
} else {
  tf47_tf47launchers_active = false; publicVariable "tf47_tf47launchers_active";
};
//check for RHS USF
if (isClass(configfile >> "CfgVehicles" >> "rhsusf_m998_w_4dr")) then {
  tf47_rhs_active = true; publicVariable "tf47_rhs_active";
} else {
  tf47_rhs_active = false; publicVariable "tf47_rhs_active";
};
//Check for TFR
if (isClass(configfile >> "CfgVehicles" >> "Item_tf_anprc152")) then {
  tf47_tfr_active = true; publicVariable "tf47_tfr_active";
} else {
  tf47_tfr_active = false; publicVariable "tf47_tfr_active";
};
//Check if is vanilla
if (!tf47_ace_active && !tf47_rhs_active && !tf47_tf47launchers_active && !tf47_tfr_active) then {
  tf47_isVanilla = true; publicVariable "tf47_isVanilla";
} else {
  tf47_isVanilla = false; publicVariable "tf47_isVanilla";
};
//Defines End
_thislist = _this select 0;
_location = _this select 1;
_type = _this select 2;


{
	_veh = _x;

	_drv = driver _veh;
	_dmg = getDammage _veh;
	_dist = _veh distance _location;
	_pos = getPos _veh;
	_height = _pos select 2;

	if (_drv == _veh) then {
		// not a vehicle

	} else { if (player != _drv) then {
		// not the driver

	} else { if (!(_veh isKindOf _type)) then {
		// wrong type

	} else { if (_height > 15) then {
		// Veh too high

	} else { if (_dist > 10) then {
		// too far away

	} else { if (_veh getVariable ["tf47service", false]) then {
		// already being serviced

	} else {

		[_veh, _location, _type] execVM "tf47\vehicleService\vehicleServiceInitSub.sqf";

	}; }; }; }; }; };

} forEach _thislist;

if (tf47_vehicleservice_debug) then {
  hint "Vehicle Service: Initiated";
};

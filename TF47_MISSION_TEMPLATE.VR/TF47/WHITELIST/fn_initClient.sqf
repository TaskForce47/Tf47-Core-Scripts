/*

	author: TF47  mindbl4ster

	description:
		set tools for enforcing whitelist information and advanced tracking of interaction between client and vehicle

	parameter:
    nothing

	return
		bool - successflag

	example
		[] call tf47_whitelist_fnc_initClient;

*/
#include "..\tf47_macros.hpp"

if(isServer || !hasInterface)exitWith{
	DTRACE_1("[ ERROR ] > 'Whitelist' > Client initialization failed");
	false
};

// init permissions - default nothing allowed
if(isNil "TF47_PERMISSION_BUILDER")then{ TF47_PERMISSION_BUILDER = false; };
if(isNil "TF47_PERMISSION_ARMOUR")then{ TF47_PERMISSION_ARMOUR = false; };
if(isNil "TF47_PERMISSION_PLANE")then{ TF47_PERMISSION_PLANE = false; };
if(isNil "TF47_PERMISSION_HELO")then{ TF47_PERMISSION_HELO = false; };
if(isNil "TF47_PERMISSION_JTFC")then{ TF47_PERMISSION_JTFC = false; };
if(isNil "tf47_whitelist_clientToServerPermissionRequest")then{tf47_whitelist_clientToServerPermissionRequest = [player, 0]; };

/*
  see if player is anything special and needs permission for playing that specialcharacter
  nothing 0
  helo 1
  jet 2
  tank 3
  builder 4
  jtfc 5
*/
private _specialState = player getVariable ["tf47_whitelist_specialCharacter",0];

/*
	translate specialstate to sql database listID
*/
tf47_whitelist_clientToServerPermissionRequest = switch (	_specialState )do {
	case(1):{ [player, 1] };
  case(2):{ [player, 1] };
  case(3):{ [player, 2] };
	case(4):{ [player, 99] };
	case(5):{ [player, 3] };
	default{ [player, 0] };
};
publicVariableServer "tf47_whitelist_clientToServerPermissionRequest";

if( WHITELIST )then{
	player addEventHandler ["GetInMan",{
		params ["_unit","_pos","_veh","_turrent"];

		if(	( _veh getCargoIndex player ) < 0  &&
			isTouchingGround _veh &&
			!(_veh isKindOf "ParachuteBase")
		)then{
			switch (true) do {
				case( _veh  isKindOf "Tank"):{
					if ( ! TF47_PERMISSION_ARMOUR ) then {
						moveOut player;
					};
				};
				case( _veh  isKindOf "Helicopter"):{
					if ( ! TF47_PERMISSION_HELO) then {
						moveOut player;
					};
				};
				case( _veh  isKindOf "Plane"):{
					if ( ! TF47_PERMISSION_PLANE ) then {
						moveOut player;
					};
				};
			};
		};
	}];

	player addEventHandler ["SeatSwitchedMan",{
		params ["_unit","","_veh"];

		if(	( _veh getCargoIndex player ) < 0  &&
			isTouchingGround _veh &&
			!(_veh isKindOf "ParachuteBase")
		)then{
			switch (true) do {
				case( _veh  isKindOf "Tank"):{
					if ( ! TF47_PERMISSION_ARMOUR ) then {
						moveOut player;
					};
				};
				case( _veh  isKindOf "Helicopter"):{
					if ( ! TF47_PERMISSION_HELO) then {
						moveOut player;
					};
				};
				case( _veh  isKindOf "Plane"):{
					if ( ! TF47_PERMISSION_PLANE ) then {
						moveOut player;
					};
				};
			};
		};
	}];
}else{
	DTRACE_1("[ INFO ] > 'Whitelist' > Whitelist enforcing not activated");
};


/*
	workaround for not reporting respawn when player joins the server with respawnselection active
*/
if( REPORTING )then{
		tf47_debug_killed = 1;
		private _eval = (missionConfigFile >> "respawnOnStart") call BIS_fnc_getCfgData;
		if (!isNil _eval)then{
			if(_eval > 0)then{
				tf47_debug_killed = 0;
			};
		};
		player addEventHandler ["Respawn",
		{
			if(tf47_debug_killed > 0)then{
				[	[5, "",(getPlayerUID player)],	{	_this call tf47_whitelist_fnc_reportToDatabase;	}	] remoteExec ["call",2,false];
			};
			tf47_debug_killed = tf47_debug_killed  +1;
		}];
		DTRACE_1("[ INFO ] > 'Reporting' > Initialized basic player action reporting");
}else{
	if !(REPORTING) then{
		DTRACE_1("[ INFO ] > 'Reporting' > Reporting not activated");
	};
};

DTRACE_1("[ OK ] > 'Whitelist' > Client initialization finished");
true

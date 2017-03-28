/*

	author: TF47  mindbl4ster

	description:
		set permissions requested by client
    function is called by server

	parameter:
    nothing

	return
		bool - successflag

	example
		[] call tf47_whitelist_fnc_setClientPermission;

*/
params [
  ["_permission", false, [false] ]
];
private _specialState = player getVariable ["tf47_whitelist_specialCharacter",0];
//set default values
TF47_PERMISSION_BUILDER = false;
TF47_PERMISSION_ARMOUR = false;
TF47_PERMISSION_PLANE = false;
TF47_PERMISSION_HELO = false;
TF47_PERMISSION_JTFC = false;
//apply DB entry
switch (	_specialState )do {
  case(1):{ TF47_PERMISSION_HELO = _permission; };
  case(2):{ TF47_PERMISSION_PLANE = _permission; };
  case(3):{ TF47_PERMISSION_ARMOUR = _permission; };
  case(4):{ TF47_PERMISSION_BUILDER =  _permission; };
  case(5):{ TF47_PERMISSION_JTFC =  _permission; TF47_PERMISSION_BUILDER =  _permission; };
  default{};
};
if (_specialState > 0 && !_permission)then{
  // player is not whitelisted for the use of this slot so end mission for him
  "LOSER" call BIS_fnc_endMission;
};

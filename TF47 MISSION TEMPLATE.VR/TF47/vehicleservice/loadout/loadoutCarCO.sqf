_veh = _this select 0;
_veh setVariable ["loadoutName", "Combined Operations Loadout", true];
//Clear Cargo
clearItemCargoGlobal _veh;
clearWeaponCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearBackpackCargoGlobal _veh;

if (_veh isKindOf "MRAP_01_base_F") then {
  if (tf47_vehicleservice_debug) then {hint "Car detected"};
  if (tf47_ace_active) then {
    //Medic
    _veh addItemCargoGlobal ["ACE_fieldDressing",10];
    _veh addItemCargoGlobal ["ACE_packingBandage",10];
    _veh addItemCargoGlobal ["ACE_elasticBandage",10];
    _veh addItemCargoGlobal ["ACE_salineIV_500",4];
    _veh addItemCargoGlobal ["ACE_tourniquet", 4];
    _veh addItemCargoGlobal ["ACE_morphine",5];
    _veh addItemCargoGlobal ["ACE_epinephrine",5];
    //Item
    _veh addItemCargoGlobal ["ACE_Flashlight_XL50",4];
    _veh addWeaponCargoGlobal ["ACE_Vector",1];
    _veh addItemCargoGlobal ["ACE_EarPlugs",4];
  };
  if (tf47_rhs_active) then {
    //Items
    _veh addItemCargoGlobal ["rhsusf_ANPVS_15",4];
    //Weapons
    _veh addWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle",2];
    _veh addWeaponCargoGlobal ["rhs_weap_m16a4_carryhandle",1];
    _veh addWeaponCargoGlobal ["rhs_weap_m16a4_carryhandle_M203",1];
    //Ammo
    _veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",40];
    _veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",10];

    // Attachments
    _veh addItemCargoGlobal ["rhsusf_acc_ACOG_USMC",2];
  };
  if (tf47_tfr_active) then {
    _veh addItemCargoGlobal ["tf_rt1523g",1];
    _veh addItemCargoGlobal ["tf_anprc152",4];
  };
  if (tf47_tf47launchers_active) then {
    _veh addWeaponCargoGlobal ["tf47_at4_heat",2];
    _veh addMagazineCargoGlobal ["tf47_m3maaws_heat", 4];
    _veh addWeaponCargoGlobal ["tf47_m3maaws",1];
    _veh addItemCargoGlobal ["tf47_optic_m3maaws", 1];
  } else {
    if (tf47_rhs_active) then {
      _veh addWeaponCargoGlobal ["rhs_weap_M136",2];
      _veh addItemCargoGlobal ["rhs_m136_mag",2];
    };
  };
  //Vanilla always add Items
  _veh addMagazineCargoGlobal ["SmokeShell",3];
  _veh addMagazineCargoGlobal ["SmokeShellGreen",3];
  _veh addMagazineCargoGlobal ["SmokeShellRed",3];
  _veh addMagazineCargoGlobal ["SmokeShellBLue",3];
  _veh addMagazineCargoGlobal ["HandGrenade",5];
};
if (_veh isKindOf "Truck_01_base_F") then {
  if (tf47_vehicleservice_debug) then {hint "Car detected"};
  if (tf47_ace_active) then {
    //Medic
    _veh addItemCargoGlobal ["ACE_fieldDressing",10];
    _veh addItemCargoGlobal ["ACE_packingBandage",10];
    _veh addItemCargoGlobal ["ACE_elasticBandage",10];
    _veh addItemCargoGlobal ["ACE_salineIV_500",4];
    _veh addItemCargoGlobal ["ACE_tourniquet", 4];
    _veh addItemCargoGlobal ["ACE_morphine",5];
    _veh addItemCargoGlobal ["ACE_epinephrine",5];
    //Item
    _veh addItemCargoGlobal ["ACE_Flashlight_XL50",4];
    _veh addWeaponCargoGlobal ["ACE_Vector",1];
    _veh addItemCargoGlobal ["ACE_EarPlugs",4];
  };
  if (tf47_rhs_active) then {
    //Items
    _veh addItemCargoGlobal ["rhsusf_ANPVS_15",4];
    //Weapons
    _veh addWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle",4];
    _veh addWeaponCargoGlobal ["rhs_weap_m16a4_carryhandle",1];
    _veh addWeaponCargoGlobal ["rhs_weap_m16a4_carryhandle_M203",1];
    //Ammo
    _veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",60];
    _veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",10];

    // Attachments
    _veh addItemCargoGlobal ["rhsusf_acc_ACOG_USMC",4];
  };
  if (tf47_tfr_active) then {
    _veh addItemCargoGlobal ["tf_rt1523g",1];
    _veh addItemCargoGlobal ["tf_anprc152",4];
  };
  if (tf47_tf47launchers_active) then {
    _veh addWeaponCargoGlobal ["tf47_at4_heat",4];
    _veh addMagazineCargoGlobal ["tf47_m3maaws_heat", 6];
    _veh addWeaponCargoGlobal ["tf47_m3maaws",1];
    _veh addItemCargoGlobal ["tf47_optic_m3maaws", 1];
  } else {
    if (tf47_rhs_active) then {
      _veh addWeaponCargoGlobal ["rhs_weap_M136",2];
      _veh addItemCargoGlobal ["rhs_m136_mag",2];
    };
  };
  //Vanilla always add Items
  _veh addMagazineCargoGlobal ["SmokeShell",3];
  _veh addMagazineCargoGlobal ["SmokeShellGreen",3];
  _veh addMagazineCargoGlobal ["SmokeShellRed",3];
  _veh addMagazineCargoGlobal ["SmokeShellBLue",3];
  _veh addMagazineCargoGlobal ["HandGrenade",10];
};
if (_veh isKindOf "Tank_F") then {
  if (tf47_vehicleservice_debug) then {hint "Car detected"};
  if (tf47_ace_active) then {
    //Medic
    _veh addItemCargoGlobal ["ACE_fieldDressing",10];
    _veh addItemCargoGlobal ["ACE_packingBandage",10];
    _veh addItemCargoGlobal ["ACE_elasticBandage",10];
    _veh addItemCargoGlobal ["ACE_salineIV_500",4];
    _veh addItemCargoGlobal ["ACE_tourniquet", 4];
    _veh addItemCargoGlobal ["ACE_morphine",5];
    _veh addItemCargoGlobal ["ACE_epinephrine",5];
    //Item
    _veh addItemCargoGlobal ["ACE_Flashlight_XL50",4];
    _veh addWeaponCargoGlobal ["ACE_Vector",1];
    _veh addItemCargoGlobal ["ACE_EarPlugs",4];
  };
  if (tf47_rhs_active) then {
    //Items
    _veh addItemCargoGlobal ["rhsusf_ANPVS_15",4];
    //Weapons
    _veh addWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle",2];
    _veh addWeaponCargoGlobal ["rhs_weap_m16a4_carryhandle",1];
    _veh addWeaponCargoGlobal ["rhs_weap_m16a4_carryhandle_M203",1];
    //Ammo
    _veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",40];
    _veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",10];

    // Attachments
    _veh addItemCargoGlobal ["rhsusf_acc_ACOG_USMC",2];
  };
  if (tf47_tfr_active) then {
    _veh addItemCargoGlobal ["tf_rt1523g",1];
    _veh addItemCargoGlobal ["tf_anprc152",4];
  };
  if (tf47_tf47launchers_active) then {
    _veh addWeaponCargoGlobal ["tf47_at4_heat",1];
    _veh addMagazineCargoGlobal ["tf47_m3maaws_heat", 2];
    _veh addWeaponCargoGlobal ["tf47_m3maaws",1];
    _veh addItemCargoGlobal ["tf47_optic_m3maaws", 1];
  } else {
    if (tf47_rhs_active) then {
      _veh addWeaponCargoGlobal ["rhs_weap_M136",1];
      _veh addItemCargoGlobal ["rhs_m136_mag",1];
    };
  };
  //Vanilla always add Items
  _veh addMagazineCargoGlobal ["SmokeShell",3];
  _veh addMagazineCargoGlobal ["SmokeShellGreen",3];
  _veh addMagazineCargoGlobal ["SmokeShellRed",3];
  _veh addMagazineCargoGlobal ["SmokeShellBLue",3];
  _veh addMagazineCargoGlobal ["HandGrenade",5];
};

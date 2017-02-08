_veh = _this select 0;
_veh setVariable ["loadoutName", "Anti Tank Loadout", true];
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
  };
  if (tf47_rhs_active) then {
    //Items
    //_veh addItemCargoGlobal ["rhsusf_ANPVS_15",4];
    //Weapons

    _veh addWeaponCargoGlobal ["rhs_weap_fim92", 1];
    //_veh addWeaponCargoGlobal ["rhs_weap_fgm148", 1];
    // Ammo
    _veh addMagazineCargoGlobal ["rhs_fim92_mag",3];
    //_veh addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",1];

    // Attachments
    //_veh addItemCargoGlobal ["rhsusf_acc_ACOG_USMC",2];
  };
  if (tf47_tfr_active) then {
    _veh addItemCargoGlobal ["tf_rt1523g",1];
    _veh addItemCargoGlobal ["tf_anprc152",4];
  };
  if (tf47_tf47launchers_active) then {
    //_veh addWeaponCargoGlobal ["tf47_at4_heat",2];
    _veh addMagazineCargoGlobal ["tf47_m3maaws_heat", 8];
    _veh addMagazineCargoGlobal ["tf47_m3maaws_he", 2];
    _veh addWeaponCargoGlobal ["tf47_m3maaws",2];
    _veh addItemCargoGlobal ["tf47_optic_m3maaws", 2];
  } else {
    if (tf47_rhs_active) then {
    //  _veh addWeaponCargoGlobal ["rhs_weap_M136",2];
    //  _veh addItemCargoGlobal ["rhs_m136_mag",2];
    };
  };
  //Vanilla always add Items
  _veh addMagazineCargoGlobal ["SmokeShellGreen",2];
  _veh addMagazineCargoGlobal ["SmokeShellRed",2];
  _veh addMagazineCargoGlobal ["SmokeShell",4];
};
if (_veh isKindOf "Truck_01_base_F") then {
  if (tf47_vehicleservice_debug) then {hint "Truck detected"};
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
  };
  if (tf47_rhs_active) then {
    //Items
    //_veh addItemCargoGlobal ["rhsusf_ANPVS_15",4];
    //Weapons
    //_veh addWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle",2];
    _veh addWeaponCargoGlobal ["rhs_weap_fim92", 1];
    _veh addWeaponCargoGlobal ["rhs_weap_fgm148", 1];
    // Ammo
    _veh addMagazineCargoGlobal ["rhs_fim92_mag",3];
    _veh addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",1];
    //_veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",10];
    // Attachments
    //_veh addItemCargoGlobal ["rhsusf_acc_ACOG_USMC",2];
  };
  if (tf47_tfr_active) then {
    _veh addItemCargoGlobal ["tf_rt1523g",1];
    _veh addItemCargoGlobal ["tf_anprc152",4];
  };
  if (tf47_tf47launchers_active) then {
    _veh addWeaponCargoGlobal ["tf47_at4_heat",2];
    _veh addMagazineCargoGlobal ["tf47_m3maaws_heat", 10];
    _veh addMagazineCargoGlobal ["tf47_m3maaws_he", 2];
    _veh addWeaponCargoGlobal ["tf47_m3maaws",2];
    _veh addItemCargoGlobal ["tf47_optic_m3maaws", 2];
  } else {
    if (tf47_rhs_active) then {
      _veh addWeaponCargoGlobal ["rhs_weap_M136",2];
      _veh addItemCargoGlobal ["rhs_m136_mag",2];
    };
  };
  //Vanilla always add Items
  _veh addMagazineCargoGlobal ["SmokeShellGreen",5];
  _veh addMagazineCargoGlobal ["SmokeShellRed",5];
  _veh addMagazineCargoGlobal ["SmokeShell",10];
};
if (_veh isKindOf "Tank_F") then {
  if (tf47_vehicleservice_debug) then {hint "Tank detected"};
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
  };
  if (tf47_rhs_active) then {
    //Items
    //_veh addItemCargoGlobal ["rhsusf_ANPVS_15",4];
    //Weapons

    _veh addWeaponCargoGlobal ["rhs_weap_fim92", 1];
    //_veh addWeaponCargoGlobal ["rhs_weap_fgm148", 1];
    // Ammo
    _veh addMagazineCargoGlobal ["rhs_fim92_mag",3];
    //_veh addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",1];

    // Attachments
    //_veh addItemCargoGlobal ["rhsusf_acc_ACOG_USMC",2];
  };
  if (tf47_tfr_active) then {
    _veh addItemCargoGlobal ["tf_rt1523g",1];
    _veh addItemCargoGlobal ["tf_anprc152",4];
  };
  if (tf47_tf47launchers_active) then {
    //_veh addWeaponCargoGlobal ["tf47_at4_heat",2];
    _veh addMagazineCargoGlobal ["tf47_m3maaws_heat", 8];
    _veh addMagazineCargoGlobal ["tf47_m3maaws_he", 2];
    _veh addWeaponCargoGlobal ["tf47_m3maaws",2];
    _veh addItemCargoGlobal ["tf47_optic_m3maaws", 2];
  } else {
    if (tf47_rhs_active) then {
    //  _veh addWeaponCargoGlobal ["rhs_weap_M136",2];
    //  _veh addItemCargoGlobal ["rhs_m136_mag",2];
    };
  };
  //Vanilla always add Items
  _veh addMagazineCargoGlobal ["SmokeShellGreen",2];
  _veh addMagazineCargoGlobal ["SmokeShellRed",2];
  _veh addMagazineCargoGlobal ["SmokeShell",4];
};

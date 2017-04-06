_veh = _this select 0;
_veh setVariable ["loadoutName", "Mortar Loadout", true];
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
    _veh addItemCargoGlobal ["ACE_EarPlugs",5];
    _veh addItemCargoGlobal ["ACE_MapTools",5];
    _veh addItemCargoGlobal ["ACE_RangeTable_82mm",2];
    _veh addItemCargoGlobal ["ACE_microDAGR",3];
    _veh addItemCargoGlobal ["ACE_RangeCard",3];
    _veh addWeaponCargoGlobal ["ACE_Vector",3];
  };
  if (tf47_rhs_active) then {
    //Items
    _veh addItemCargoGlobal ["rhsusf_ANPVS_15",4];
    //Weapons
    _veh addWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle",2];
    // Ammo
    _veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",20];

    // Attachments
    _veh addItemCargoGlobal ["rhsusf_acc_ACOG_USMC",2];
  };
  if (tf47_tfr_active) then {
    _veh addItemCargoGlobal ["tf_rt1523g",1];
    _veh addItemCargoGlobal ["tf_anprc152",4];
  };
  if (tf47_tf47launchers_active) then {
    _veh addWeaponCargoGlobal ["tf47_at4_heat",1];
  } else {
    if (tf47_rhs_active) then {
      _veh addWeaponCargoGlobal ["rhs_weap_M136",1];
      _veh addItemCargoGlobal ["rhs_m136_mag",1];
    };
  };
  //Mortar
  _veh addBackpackCargoGlobal ["B_Mortar_01_weapon_F",1];
  _veh addBackpackCargoGlobal ["B_Mortar_01_support_F",1];

  //Vanilla always add Items
    _veh addMagazineCargoGlobal ["SmokeShell",6];
    _veh addMagazineCargoGlobal ["SmokeShellGreen",2];
    _veh addMagazineCargoGlobal ["SmokeShellRed",2];
    _veh addMagazineCargoGlobal ["SmokeShellBLue",2];
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
    _veh addItemCargoGlobal ["ACE_EarPlugs",5];
    _veh addItemCargoGlobal ["ACE_MapTools",5];
    _veh addItemCargoGlobal ["ACE_RangeTable_82mm",2];
    _veh addItemCargoGlobal ["ACE_microDAGR",3];
    _veh addItemCargoGlobal ["ACE_RangeCard",3];
    _veh addWeaponCargoGlobal ["ACE_Vector",3];
  };
  if (tf47_rhs_active) then {
    //Items
    _veh addItemCargoGlobal ["rhsusf_ANPVS_15",4];
    //Weapons
    _veh addWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle",2];
    // Ammo
    _veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",20];

    // Attachments
    _veh addItemCargoGlobal ["rhsusf_acc_ACOG_USMC",2];
  };
  if (tf47_tfr_active) then {
    _veh addItemCargoGlobal ["tf_rt1523g",1];
    _veh addItemCargoGlobal ["tf_anprc152",4];
  };
  if (tf47_tf47launchers_active) then {
    _veh addWeaponCargoGlobal ["tf47_at4_heat",1];
  } else {
    if (tf47_rhs_active) then {
      _veh addWeaponCargoGlobal ["rhs_weap_M136",1];
      _veh addItemCargoGlobal ["rhs_m136_mag",1];
    };
  };
  //Mortar
  _veh addBackpackCargoGlobal ["B_Mortar_01_weapon_F",1];
  _veh addBackpackCargoGlobal ["B_Mortar_01_support_F",1];

  //Vanilla always add Items
    _veh addMagazineCargoGlobal ["SmokeShell",6];
    _veh addMagazineCargoGlobal ["SmokeShellGreen",2];
    _veh addMagazineCargoGlobal ["SmokeShellRed",2];
    _veh addMagazineCargoGlobal ["SmokeShellBLue",2];
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
    _veh addItemCargoGlobal ["ACE_EarPlugs",5];
    _veh addItemCargoGlobal ["ACE_MapTools",5];
    _veh addItemCargoGlobal ["ACE_RangeTable_82mm",2];
    _veh addItemCargoGlobal ["ACE_microDAGR",3];
    _veh addItemCargoGlobal ["ACE_RangeCard",3];
    _veh addWeaponCargoGlobal ["ACE_Vector",3];
  };
  if (tf47_rhs_active) then {
    //Items
    _veh addItemCargoGlobal ["rhsusf_ANPVS_15",4];
    //Weapons
    _veh addWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle",2];
    // Ammo
    _veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",20];

    // Attachments
    _veh addItemCargoGlobal ["rhsusf_acc_ACOG_USMC",2];
  };
  if (tf47_tfr_active) then {
    _veh addItemCargoGlobal ["tf_rt1523g",1];
    _veh addItemCargoGlobal ["tf_anprc152",4];
  };
  if (tf47_tf47launchers_active) then {
    _veh addWeaponCargoGlobal ["tf47_at4_heat",1];
  } else {
    if (tf47_rhs_active) then {
      _veh addWeaponCargoGlobal ["rhs_weap_M136",1];
      _veh addItemCargoGlobal ["rhs_m136_mag",1];
    };
  };
  //Mortar
  _veh addBackpackCargoGlobal ["B_Mortar_01_weapon_F",1];
  _veh addBackpackCargoGlobal ["B_Mortar_01_support_F",1];

  //Vanilla always add Items
    _veh addMagazineCargoGlobal ["SmokeShell",6];
    _veh addMagazineCargoGlobal ["SmokeShellGreen",2];
    _veh addMagazineCargoGlobal ["SmokeShellRed",2];
    _veh addMagazineCargoGlobal ["SmokeShellBLue",2];
};

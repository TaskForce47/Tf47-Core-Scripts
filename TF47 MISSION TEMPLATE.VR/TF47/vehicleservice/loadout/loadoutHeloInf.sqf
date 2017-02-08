_veh = _this select 0;
_veh setVariable ["loadoutName", "Infantry Loadout", true];
//Clear Cargo
clearItemCargoGlobal _veh;
clearWeaponCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearBackpackCargoGlobal _veh;

if ((_veh isKindOf "Heli_Transport_03_base_F") or (_veh isKindOf "RHS_MELB_base")) then {  //LB/UH1Y
  if (tf47_vehicleservice_debug) then {hint "Small Helicopter detected"};
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
    _veh addItemCargoGlobal ["rhsusf_ANPVS_15",2];
    //Weapons
    _veh addWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle",2];
    // Ammo
    _veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",30];

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
  //Vanilla always add Items
    _veh addMagazineCargoGlobal ["SmokeShell",6];
    _veh addMagazineCargoGlobal ["SmokeShellGreen",2];
    _veh addMagazineCargoGlobal ["SmokeShellRed",2];
    _veh addMagazineCargoGlobal ["SmokeShellBLue",2];
    _veh addItemCargoGlobal ["B_UavTerminal",1];
};
if (_veh isKindOf "Heli_Transport_01_base_F") then {  //UH60
  if (tf47_vehicleservice_debug) then {hint "Medium Helicopter detected"};
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
    _veh addItemCargoGlobal ["rhsusf_ANPVS_15",4];
    //Weapons
    _veh addWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle",6];
    // Ammo
    _veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",60];
    _veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",12];
    _veh addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",8];
    _veh addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell",8];
    _veh addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",4];
    _veh addMagazineCargoGlobal ["rhs_200rnd_556x45_T_SAW",10];
    // Attachments
    _veh addItemCargoGlobal ["rhsusf_acc_ACOG_USMC",6];
  };
  if (tf47_tfr_active) then {
    _veh addItemCargoGlobal ["tf_rt1523g",1];
    _veh addItemCargoGlobal ["tf_anprc152",12];
  };
  if (tf47_tf47launchers_active) then {
    _veh addWeaponCargoGlobal ["tf47_at4_heat",2];
  } else {
    if (tf47_rhs_active) then {
      _veh addWeaponCargoGlobal ["rhs_weap_M136",2];
      _veh addItemCargoGlobal ["rhs_m136_mag",2];
    };
  };
  //Vanilla always add Items
    _veh addMagazineCargoGlobal ["SmokeShell",14];
    _veh addMagazineCargoGlobal ["SmokeShellGreen",5];
    _veh addMagazineCargoGlobal ["SmokeShellRed",5];
    _veh addMagazineCargoGlobal ["SmokeShellBLue",5];
    _veh addItemCargoGlobal ["B_UavTerminal",1];
};
if ((_veh isKindOf "Helicopter_Base_H") && !(_veh isKindOf "RHS_UH60_Base") && !(_veh isKindOf "RHS_MELB_base")) then {  //CH47 / CH53
  if (tf47_vehicleservice_debug) then {hint "Large Helicopter detected"};
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
    _veh addItemCargoGlobal ["rhsusf_ANPVS_15",12];
    //Weapons
    _veh addWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle",8];
    // Ammo
    _veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_Mk318_Stanag",100];
    _veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",36];
    _veh addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",12];
    _veh addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell",12];
    _veh addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",12];
    _veh addMagazineCargoGlobal ["rhs_200rnd_556x45_T_SAW",50];
    // Attachments
    _veh addItemCargoGlobal ["rhsusf_acc_ACOG_USMC",8];
  };
  if (tf47_tfr_active) then {
    _veh addItemCargoGlobal ["tf_rt1523g",1];
    _veh addItemCargoGlobal ["tf_anprc152",12];
  };
  if (tf47_tf47launchers_active) then {
    _veh addWeaponCargoGlobal ["tf47_at4_heat",4];
  } else {
    if (tf47_rhs_active) then {
      _veh addWeaponCargoGlobal ["rhs_weap_M136",4];
      _veh addItemCargoGlobal ["rhs_m136_mag",4];
    };
  };
  //Vanilla always add Items
    _veh addMagazineCargoGlobal ["SmokeShell",14];
    _veh addMagazineCargoGlobal ["SmokeShellGreen",5];
    _veh addMagazineCargoGlobal ["SmokeShellRed",5];
    _veh addMagazineCargoGlobal ["SmokeShellBLue",5];
    _veh addItemCargoGlobal ["B_UavTerminal",1];
};

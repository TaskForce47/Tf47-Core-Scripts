_veh = _this select 0;
_veh setVariable ["loadoutName", "Medical Loadout", true];
//Clear Cargo
clearItemCargoGlobal _veh;
clearWeaponCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearBackpackCargoGlobal _veh;

if ((_veh isKindOf "Heli_Transport_03_base_F") or (_veh isKindOf "RHS_MELB_base")) then {  //LB/UH1Y
  if (tf47_vehicleservice_debug) then {hint "Small Helicopter detected"};
  if (tf47_ace_active) then {
    //Medic
    _veh addItemCargoGlobal ["ACE_fieldDressing",15];
    _veh addItemCargoGlobal ["ACE_elasticBandage",15];
    _veh addItemCargoGlobal ["ACE_quikclot",15];
    _veh addItemCargoGlobal ["ACE_tourniquet",8];
    _veh addItemCargoGlobal ["ACE_personalAidKit",5];
    _veh addItemCargoGlobal ["ACE_packingBandage",15];
    _veh addItemCargoGlobal ["ACE_bloodIV",5];
    _veh addItemCargoGlobal ["ACE_plasmaIV",5];
    _veh addItemCargoGlobal ["ACE_salineIV",5];
    _veh addItemCargoGlobal ["ACE_bloodIV_500",5];
    _veh addItemCargoGlobal ["ACE_plasmaIV_500",5];
    _veh addItemCargoGlobal ["ACE_salineIV_500",5];
    _veh addItemCargoGlobal ["ACE_bloodIV_250",10];
    _veh addItemCargoGlobal ["ACE_plasmaIV_250",10];
    _veh addItemCargoGlobal ["ACE_salineIV_250",10];
    _veh addItemCargoGlobal ["ACE_morphine",10];
    _veh addItemCargoGlobal ["ACE_atropine",10];
    _veh addItemCargoGlobal ["ACE_epinephrine",10];

  };

  if (tf47_tfr_active) then {
    _veh addItemCargoGlobal ["tf_rt1523g",1];
    _veh addItemCargoGlobal ["tf_anprc152",4];
  };
  //Vanilla always add Items
    _veh addMagazineCargoGlobal ["SmokeShell",6];
    _veh addMagazineCargoGlobal ["SmokeShellGreen",2];
    _veh addMagazineCargoGlobal ["SmokeShellRed",2];
    _veh addMagazineCargoGlobal ["SmokeShellBLue",2];
};
if (_veh isKindOf "Heli_Transport_01_base_F") then {  //UH60
  if (tf47_vehicleservice_debug) then {hint "Medium Helicopter detected"};
  if (tf47_ace_active) then {
    //Medic
    _veh addItemCargoGlobal ["ACE_fieldDressing",50];
    _veh addItemCargoGlobal ["ACE_elasticBandage",50];
    _veh addItemCargoGlobal ["ACE_quikclot",100];
    _veh addItemCargoGlobal ["ACE_tourniquet",20];
    _veh addItemCargoGlobal ["ACE_personalAidKit",20];
    _veh addItemCargoGlobal ["ACE_packingBandage",50];
    _veh addItemCargoGlobal ["ACE_bloodIV",20];
    _veh addItemCargoGlobal ["ACE_plasmaIV",20];
    _veh addItemCargoGlobal ["ACE_salineIV",20];
    _veh addItemCargoGlobal ["ACE_bloodIV_500",25];
    _veh addItemCargoGlobal ["ACE_plasmaIV_500",25];
    _veh addItemCargoGlobal ["ACE_salineIV_500",25];
    _veh addItemCargoGlobal ["ACE_bloodIV_250",25];
    _veh addItemCargoGlobal ["ACE_plasmaIV_250",25];
    _veh addItemCargoGlobal ["ACE_salineIV_250",25];
    _veh addItemCargoGlobal ["ACE_morphine",50];
    _veh addItemCargoGlobal ["ACE_atropine",50];
    _veh addItemCargoGlobal ["ACE_epinephrine",50];
    //Item
    _veh addItemCargoGlobal ["ACE_Flashlight_XL50",4];
    _veh addWeaponCargoGlobal ["ACE_Vector",1];
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
  //Vanilla always add Items
    _veh addMagazineCargoGlobal ["SmokeShell",6];
    _veh addMagazineCargoGlobal ["SmokeShellGreen",2];
    _veh addMagazineCargoGlobal ["SmokeShellRed",2];
    _veh addMagazineCargoGlobal ["SmokeShellBLue",2];
};
if ((_veh isKindOf "Helicopter_Base_H") && !(_veh isKindOf "RHS_UH60_Base") && !(_veh isKindOf "RHS_MELB_base")) then {  //CH47 / CH53
  if (tf47_vehicleservice_debug) then {hint "Large Helicopter detected"};
  if (tf47_ace_active) then {
    //Medic
    _veh addItemCargoGlobal ["ACE_fieldDressing",50];
    _veh addItemCargoGlobal ["ACE_elasticBandage",50];
    _veh addItemCargoGlobal ["ACE_quikclot",100];
    _veh addItemCargoGlobal ["ACE_tourniquet",20];
    _veh addItemCargoGlobal ["ACE_personalAidKit",50];
    _veh addItemCargoGlobal ["ACE_packingBandage",50];
    _veh addItemCargoGlobal ["ACE_bloodIV",50];
    _veh addItemCargoGlobal ["ACE_plasmaIV",50];
    _veh addItemCargoGlobal ["ACE_salineIV",50];
    _veh addItemCargoGlobal ["ACE_bloodIV_500",25];
    _veh addItemCargoGlobal ["ACE_plasmaIV_500",25];
    _veh addItemCargoGlobal ["ACE_salineIV_500",25];
    _veh addItemCargoGlobal ["ACE_bloodIV_250",25];
    _veh addItemCargoGlobal ["ACE_plasmaIV_250",25];
    _veh addItemCargoGlobal ["ACE_salineIV_250",25];
    _veh addItemCargoGlobal ["ACE_morphine",50];
    _veh addItemCargoGlobal ["ACE_atropine",50];
    _veh addItemCargoGlobal ["ACE_epinephrine",50];
    //Item
    _veh addItemCargoGlobal ["ACE_Flashlight_XL50",4];
    _veh addWeaponCargoGlobal ["ACE_Vector",1];
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
    _veh addWeaponCargoGlobal ["tf47_at4_heat",2];
  } else {
    if (tf47_rhs_active) then {
      _veh addWeaponCargoGlobal ["rhs_weap_M136",2];
      _veh addItemCargoGlobal ["rhs_m136_mag",2];
    };
  };
  //Vanilla always add Items
    _veh addMagazineCargoGlobal ["SmokeShell",6];
    _veh addMagazineCargoGlobal ["SmokeShellGreen",2];
    _veh addMagazineCargoGlobal ["SmokeShellRed",2];
    _veh addMagazineCargoGlobal ["SmokeShellBLue",2];
};

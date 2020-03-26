// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************


//Spetsnaz

#define spet_u ["rhs_uniform_gorka_1_a","rhs_uniform_gorka_1_a","rhs_uniform_gorka_1_b"]
#define spet_v 
#define spet_h ["CUP_H_RUS_Altyn","CUP_H_RUS_Altyn_Shield_Up","CUP_H_RUS_Altyn_khaki","CUP_H_RUS_Altyn_Shield_Down","CUP_H_RUS_Altyn_black","CUP_H_RUS_Altyn_Shield_Up_black"]
#define spet_g ["rhs_balaclava","rhs_balaclava1_olive","G_Balaclava_oli"]

#define spet_w_r ["CUP_arifle_AS_VAL","CUP_arifle_OTS14_GROZA_Grip","CUP_arifle_AKS74","CUP_arifle_AKS74U"]
#define spet_a_r ["CUP_20Rnd_9x39_SP5_VSS_M","CUP_20Rnd_9x39_SP5_GROZA_M","CUP_30Rnd_545x39_AK_M","CUP_30Rnd_545x39_AK_M"]

#define spet_w_ar 
#define spet_a_ar 

#define spet_w_gr ["CUP_arifle_OTS14_GROZA_GL","CUP_arifle_AKS74_GL"]
#define spet_a_gr ["CUP_20Rnd_9x39_SP5_GROZA_M","CUP_30Rnd_545x39_AK_M"]


cargo_kit_spet_cargo = [
	[["rhs_weap_rshg2",2]],
	[["CUP_20Rnd_9x39_SP5_GROZA_M",10],["CUP_HandGrenade_RGD5",5],["rhs_18rnd_9x21mm_7N28",10],["rhs_mag_zarya2",5],["CUP_30Rnd_9x39_SP5_VIKHR_M",6],["CUP_30Rnd_545x39_AK_M",10],["CUP_1Rnd_HE_GP25_M",10],["CUP_20Rnd_9x39_SP5_VSS_M",10],["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",6]],
	[["ACE_DefusalKit",5]],
	[]
];


kit_spet_sl = [
	["<EQUIPEMENT >>  ",spet_u,"rhs_6b5_rifleman_khaki","tf_mr3000_rhs",spet_h,spet_g],
	["<PRIMARY WEAPON >>  ",spet_w_r,spet_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_6p53","rhs_18rnd_9x21mm_7N28",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["CUP_HandGrenade_RGD5",1],["PRIMARY MAG",7],["rhs_mag_zarya2",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_spet_r = [
	["<EQUIPEMENT >>  ",spet_u,"rhs_6b5_rifleman_khaki","CUP_B_AlicePack_Khaki",spet_h,spet_g],
	["<PRIMARY WEAPON >>  ",spet_w_r,spet_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_6p53","rhs_18rnd_9x21mm_7N28",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",2],["rhs_mag_zarya2",1]]]
];

kit_spet_ar = [
	["<EQUIPEMENT >>  ",spet_u,"rhs_6b5_rifleman_khaki","",spet_h,spet_g],
	["<PRIMARY WEAPON >>  ","CUP_arifle_SR3M_Vikhr","CUP_30Rnd_9x39_SP5_VIKHR_M",["CUP_muzzle_snds_SR3M","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_6p53","rhs_18rnd_9x21mm_7N28",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",1],["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",5],["rhs_mag_zarya2",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_spet_at = [
	["<EQUIPEMENT >>  ",spet_u,"rhs_6b5_rifleman_khaki","",spet_h,spet_g],
	["<PRIMARY WEAPON >>  ",spet_w_r,spet_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rshg2","rhs_rshg2_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_6p53","rhs_18rnd_9x21mm_7N28",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["CUP_HandGrenade_RGD5",1],["PRIMARY MAG",7],["rhs_mag_zarya2",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_spet_gr = [
	["<EQUIPEMENT >>  ",spet_u,"rhs_6b5_rifleman_khaki","",spet_h,spet_g],
	["<PRIMARY WEAPON >>  ",spet_w_gr,spet_a_gr,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_6p53","rhs_18rnd_9x21mm_7N28",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["CUP_HandGrenade_RGD5",1],["PRIMARY MAG",5],["CUP_1Rnd_HE_GP25_M",6],["rhs_mag_zarya2",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_spet_mm = [
	["<EQUIPEMENT >>  ",spet_u,"rhs_6b5_sniper_khaki","","CUP_H_RUS_Altyn",spet_g],
	["<PRIMARY WEAPON >>  ","CUP_srifle_VSSVintorez","CUP_20Rnd_9x39_SP5_VSS_M",["","","CUP_optic_PSO_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_6p53","rhs_18rnd_9x21mm_7N28",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["CUP_HandGrenade_RGD5",1],["PRIMARY MAG",5],["rhs_mag_zarya2",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_spet_mg = [
	["<EQUIPEMENT >>  ",spet_u,"rhs_6b5_sniper_khaki","CUP_B_AlicePack_Khaki",spet_h,spet_g],
	["<PRIMARY WEAPON >>  ","CUP_lmg_PKM","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_6p53","rhs_18rnd_9x21mm_7N28",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["HANDGUN MAG",1],["rhs_mag_zarya2",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];

kit_Spet_svd = [
	["<EQUIPEMENT >>  ",spet_u,"rhs_vydra_3m","tf_mr3000_rhs","CUP_H_FR_BandanaGreen",""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD_wdl","10Rnd_762x54_Mag",["","","CUP_optic_PSO_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_6p53","rhs_18rnd_9x21mm_7N28",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",6],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_Spet_svd2 = [
	["<EQUIPEMENT >>  ",spet_u,"rhs_vydra_3m","","rhs_beanie_green",""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",["","","CUP_optic_PSO_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_6p53","rhs_18rnd_9x21mm_7N28",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_cdf_crew = [
	["<EQUIPEMENT >>  ","CUP_U_B_CDF_FST_1","CUP_V_CDF_OfficerBelt","","rhs_tsh4",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
];

// frd bots

#define civ_u ["CUP_U_C_racketeer_02","CUP_U_C_Profiteer_02","CUP_U_C_Profiteer_01","CUP_U_C_Citizen_01","CUP_U_C_Citizen_02","U_C_Mechanic_01_F","CUP_U_C_Rocker_01","CUP_U_C_Rocker_04","U_BG_Guerilla3_1","U_C_Man_casual_3_F","CUP_U_C_Villager_01","CUP_U_C_Villager_02","CUP_U_C_Woodlander_01","CUP_U_C_Worker_02"]
#define civ_h 
#define civ_g 

kit_cdf_r = [
	["<EQUIPEMENT >>  ","CUP_U_B_CDF_FST_1","CUP_V_CDF_6B3_2_FST","","CUP_H_SLA_Helmet",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",3],["PRIMARY MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_cdf_pl = [
	["<EQUIPEMENT >>  ","CUP_U_B_CDF_FST_1","CUP_V_CDF_OfficerBelt","","CUP_H_CDF_OfficerCap_FST",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_police_ak74 = [
	["<EQUIPEMENT >>  ","CUP_U_C_Policeman_01","","","CUP_H_C_Policecap_01",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74U","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_police_pm = [
	["<EQUIPEMENT >>  ","CUP_U_C_Policeman_01","CUP_V_O_TK_OfficerBelt","","CUP_H_C_Policecap_01",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_civ_chin = [
	["<EQUIPEMENT >>  ","CUP_U_C_Suit_01","","","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_civ_chin2 = [
	["<EQUIPEMENT >>  ","CUP_U_C_Suit_03","","","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_civ_un = [
	["<EQUIPEMENT >>  ",civ_u,"","","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];


/// enemy

#define ins_u ["CUP_U_O_CHDKZ_Kam_01","CUP_U_O_CHDKZ_Kam_02","CUP_U_O_CHDKZ_Kam_07","CUP_U_O_CHDKZ_Kam_05","CUP_U_I_GUE_Flecktarn2","CUP_U_I_GUE_Anorak_02","CUP_U_I_GUE_Anorak_01","CUP_U_I_GUE_Anorak_03"]
#define ins_v ["CUP_V_O_Ins_Carrier_Rig","CUP_V_O_Ins_Carrier_Rig_Light","CUP_V_O_SLA_Carrier_Belt02","CUP_V_OI_TKI_Jacket4_04","CUP_V_I_RACS_Carrier_Rig_wdl_2","CUP_V_I_Guerilla_Jacket"]
#define ins_h ["CUP_H_FR_BandanaGreen","CUP_H_C_Beanie_02","CUP_H_PMC_Beanie_Black","rhs_beanie_green","TRYK_H_Bandana_wig","H_Cap_grn","H_Booniehat_oli",""]
#define ins_g

#define ins_w_r ["CUP_arifle_AKS74U","CUP_arifle_AKMS_Early","CUP_arifle_AKM_Early","CUP_arifle_AK74","CUP_SKS","CUP_arifle_AK47_Early"]
#define ins_a_r ["CUP_30Rnd_545x39_AK_M","CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_762x39_AK47_M","CUP_30Rnd_545x39_AK_M","CUP_10Rnd_762x39_SKS_M","CUP_30Rnd_762x39_AK47_M"]


#define ins_w_shtg ["sgun_HunterShotgun_01_F","sgun_HunterShotgun_01_sawedoff_F"]
#define ins_a_shtg ["2Rnd_12Gauge_Slug","2Rnd_12Gauge_Slug"]

kit_Bandit_r = [
	["<EQUIPEMENT >>  ",ins_u,ins_v,"",ins_h,""],
	["<PRIMARY WEAPON >>  ",ins_w_r,ins_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["CUP_HandGrenade_RGO",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_Bandit_shtg = [
	["<EQUIPEMENT >>  ",ins_u,ins_v,"",ins_h,""],
	["<PRIMARY WEAPON >>  ",ins_w_shtg,ins_a_shtg,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGO",1],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_Bandit_mm = [
	["<EQUIPEMENT >>  ",ins_u,ins_v,"",ins_h,""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_Mosin_Nagant","CUP_5Rnd_762x54_Mosin_M",["","","CUP_optic_PEM",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGO",1],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_Bandit_svd = [
	["<EQUIPEMENT >>  ",ins_u,ins_v,"",ins_h,""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",["","","CUP_optic_PSO_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGO",1],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_Bandit_boss = [
	["<EQUIPEMENT >>  ","CUP_U_O_CHDKZ_Lopotev","CUP_V_O_TK_OfficerBelt","","","G_Aviator"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_SA61","CUP_20Rnd_B_765x17_Ball_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGO",1],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_Bandit_at = [
	["<EQUIPEMENT >>  ",ins_u,ins_v,"",ins_h,""],
	["<PRIMARY WEAPON >> ",ins_w_r,ins_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","rhs_rpg26_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["CUP_HandGrenade_RGO",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_Bandit_ar = [
	["<EQUIPEMENT >>  ",ins_u,ins_v,"",ins_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74_45","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGO",1],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[]]
];

/* *********** This array defines detailed properties of zones ************************** */
// MAIN BASE

[
	"Patrol1" /* Zone Name */
	,"WEST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			1, /* Groups quantity */
			/* Units */
			[
				["B_Soldier_F", [], "kit_Bandit_r"]
				,["B_Soldier_F", [], "kit_Bandit_shtg"]
				,["B_Soldier_F", [], "kit_Bandit_at"]
			]
		]
		,[
			1, /* Groups quantity */
			/* Units */
			[
				["B_Soldier_F", [], "kit_Bandit_r"]
				,["B_Soldier_F", [], "kit_Bandit_r"]
				,["B_Soldier_F", [], "kit_Bandit_ar"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]

,[
	"patrol2" /* Zone Name */
	,"WEST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			1, /* Groups quantity */
			/* Units */
			[
				["B_Soldier_F", [], "kit_Bandit_r"]
				,["B_Soldier_F", [], "kit_Bandit_shtg"]
				,["B_Soldier_F", [], "kit_Bandit_at"]
			]
		]
		,[
			1, /* Groups quantity */
			/* Units */
			[
				["B_Soldier_F", [], "kit_Bandit_r"]
				,["B_Soldier_F", [], "kit_Bandit_ar"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
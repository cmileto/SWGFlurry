
one_handed_sword = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "One handed sword",
	directObjectTemplate = "object/weapon/melee/sword/sword_01.iff",
	craftingValues = {
		{"mindamage",49,91,0},
		{"maxdamage",98,182,0},
		{"attackspeed",5.9,4,1},
		{"woundchance",11,21,0},
		{"hitpoints",750,1500,0},
		{"zerorangemod",-15,5,0},
		{"maxrangemod",-15,5,0},
		{"midrange",3,3,0},
		{"midrangemod",-15,5,0},
		{"maxrange",7,7,0},
		{"attackhealthcost",58,30,0},
		{"attackactioncost",31,15,0},
		{"attackmindcost",10,4,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 800,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 25,
	junkMaxValue = 45

}

addLootItemTemplate("one_handed_sword", one_handed_sword)

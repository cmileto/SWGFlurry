nightsister_protector = Creature:new {
	objectName = "@mob/creature_names:nightsister_protector",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 131,
	chanceHit = 4.75,
	damageMin = 770,
	damageMax = 1250,
	baseXp = 12424,
	baseHAM = 50000,
	baseHAMmax = 61000,
	armor = 2,
	resists = {15,200,15,200,200,200,200,200,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_protector.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "nge_all", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "nightsister_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "melee_weapons", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tailor_components", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000},
			},
			lootChance = 5000000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,swordsmanmaster,tkamid,brawlermaster,pikemanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(nightsister_protector, "nightsister_protector")

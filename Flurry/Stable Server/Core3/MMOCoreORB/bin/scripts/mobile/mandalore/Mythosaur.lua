mythosaur = Creature:new {
	objectName = "",
	customName = "Mythosaur",
	socialGroup = "kimogila",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 30.0,
	damageMin = 2270,
	damageMax = 4250,
	baseXp = 25000,
	baseHAM = 410000,
	baseHAMmax = 501000,
	armor = 2,
	resists = {195,195,195,195,165,195,195,195,135},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
    scale = 1.5,
	templates = {"object/mobile/giant_dune_kimogila.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(mythosaur, "mythosaur")

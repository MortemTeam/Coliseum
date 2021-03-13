/datum/job/arena/gladiator
	title = "Gladiator"
	department = "Jungle"
	department_flag = CIV

	total_positions = -1
	spawn_positions = -1
	supervisors = "only you"
	selection_color = "#ae3333"

	access = list()			//See /datum/job/gladiator/get_access()
	minimal_access = list()	//See /datum/job/gladiator/get_access()
	loadout_allowed = FALSE
	economic_modifier = 0
	account_allowed = 0
	alt_titles = list(
		"Red Gladiator" = /decl/hierarchy/outfit/job/gladiator/red,
		"Green Gladiator" = /decl/hierarchy/outfit/job/gladiator/green,
		"Blue Gladiator" = /decl/hierarchy/outfit/job/gladiator/blue,
	)
	outfit_type = /decl/hierarchy/outfit/job/gladiator

/datum/job/arena/gladiator/get_access()
	return get_all_station_access()

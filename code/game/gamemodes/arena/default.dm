/datum/game_mode/last_stand
	name = "Royale"
	config_tag = "royale"
	required_players = 1
	round_description = "Just have fun!"
	extended_round_description = "Survival of the fittest"
	probability = 1

/datum/game_mode/last_stand/check_finished()
	var/alive_player
	for(var/x in GLOB.human_mob_list)
		var/mob/living/carbon/h = x
		if(h.stat != DEAD)
			alive_player += 1

	if(alive_player <= 1)
		return 1

/datum/game_mode/last_stand/special_report()
	var/list/parts = list()
	var/num = 1
	for(var/x in GLOB.human_mob_list)
		var/mob/living/carbon/h = x
		if(h.stat != DEAD)
			parts += "[num]. [h.real_name] <font color='green'><B>Success!</B></font>"
		else:
			parts += "[num]. [h.real_name] <font color='red'>Fail.</font>"
		num++
	parts += ..()

	listclearnulls(parts)

	return parts.len ? "<div class='panel stationborder'>[parts.Join("<br>")]</div>" : null
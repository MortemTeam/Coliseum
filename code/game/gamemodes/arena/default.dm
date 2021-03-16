/datum/game_mode/last_stand
	name = "Royale"
	config_tag = "royale"
	required_players = 5
	round_description = "Just have fun!"
	extended_round_description = "Survival of the fittest"
	probability = 1

/datum/game_mode/last_stand/check_finished()
	var/list/alive_player = list()
	for(var/x in GLOB.human_mob_list)
		var/mob/living/carbon/human/h = x
		if(h.stat != DEAD)
			if(!(h.highjob in alive_player))
				alive_player[h.highjob] = 0

			alive_player[h.highjob] += 1

	var/alive_team = 0
	var/alive_solo = 0
	for(var/x in alive_player)
		if(x == "Gladiator")
			alive_solo++
			continue

		if(alive_player[x] > 0)
			alive_team++

	if(alive_team <= 1)
		if(alive_solo > 1)
			return 0
		return 1

/datum/game_mode/last_stand/special_report()
	var/list/parts = list()

	var/list/teams = list()
	for(var/x in GLOB.human_mob_list)
		var/mob/living/carbon/human/h = x
		if(!(h.highjob in teams))
			teams[h.highjob] = list()
		teams[h.highjob] += h

	for(var/x in teams)
		parts += "<b>[x]</b>:"
		var/num = 1
		for(var/H in teams[x])
			var/mob/living/carbon/human/h = H
			if(h.stat != DEAD)
				parts += "[num]. [h.real_name] <font color='green'><B>Success!</B></font>"
			else:
				parts += "[num]. [h.real_name] <font color='red'>Fail.</font>"
			num++
		parts += "<br>"
	parts += ..()

	listclearnulls(parts)

	return parts.len ? "<div class='panel stationborder'>[parts.Join("<br>")]</div>" : null
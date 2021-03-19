/datum/game_mode/last_stand
	name = "Royale"
	config_tag = "royale"
	required_players = 1
	round_description = "Just have fun!"
	extended_round_description = "Survival of the fittest"
	probability = 1
	var/list/player_team = list()

/datum/game_mode/last_stand/post_setup()
	..()
	for(var/x in GLOB.human_mob_list)
		var/mob/living/carbon/human/h = x
		if(!(h.highjob in player_team))
			player_team[h.highjob] = list()
		player_team[h.highjob][h.real_name] = h

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
			alive_solo += alive_player[x]
			continue

		if(alive_player[x] > 0)
			alive_team++

	if(alive_team == 0 && alive_solo <=1)
		return 1
	if(alive_team <= 1 && !alive_solo)
		return 1

/datum/game_mode/last_stand/special_report()
	var/list/parts = list()

	for(var/x in player_team)
		parts += "<b>[x]</b>:"
		var/num = 1
		for(var/H in player_team[x])
			var/mob/living/carbon/human/h = player_team[x][H]
			if(h && h.stat != DEAD)
				parts += "[num]. [H] <font color='green'><B>Success!</B></font>"
			else:
				parts += "[num]. [H] <font color='red'>Fail.</font>"
			num++
		parts += "<br>"
	parts += ..()

	listclearnulls(parts)

	return parts.len ? "<div class='panel stationborder'>[parts.Join("<br>")]</div>" : null
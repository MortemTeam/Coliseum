datum/preferences
	var/real_name						//our character's name
	var/be_random_name = 0				//whether we are a random name every round
	var/gender = MALE					//gender of character (well duh)
	var/body = "Default"
	var/age = 30						//age of character
	var/spawnpoint = "Random"   		//where this character will spawn (0-2).
	var/team = "Gladiator"
	var/metadata = ""

/datum/category_item/player_setup_item/general/basic
	name = "Basic"
	sort_order = 1

/datum/category_item/player_setup_item/general/basic/load_character(savefile/S)
	S["spawnpoint"] >> pref.spawnpoint
	S["team"]       >> pref.team

/datum/category_item/player_setup_item/general/basic/save_character(savefile/S)
	S["spawnpoint"]	<< pref.spawnpoint
	S["team"]       << pref.team

/datum/category_item/player_setup_item/general/basic/proc/sanitize_body()
	var/datum/species/S = all_species[pref.species]
	if (!S) S = all_species[SPECIES_HUMAN]
	pref.body = sanitize_inlist(pref.body, S.get_body_build_list(pref.gender), S.get_body_build(pref.gender))

/datum/category_item/player_setup_item/general/basic/sanitize_character()
	var/datum/species/S = all_species[pref.species ? pref.species : SPECIES_HUMAN]
	if (!S) S = all_species[SPECIES_HUMAN]
	pref.gender             = sanitize_inlist(pref.gender, S.genders, pick(S.genders))
	sanitize_body()
	pref.real_name          = sanitize_name(pref.real_name, pref.species)
	if(!pref.real_name)
		pref.real_name      = random_name(pref.gender, pref.species)
	pref.spawnpoint         = sanitize_inlist(pref.spawnpoint, spawntypes(), initial(pref.spawnpoint))

/datum/category_item/player_setup_item/general/basic/content()
	. = list()
	. += "<b>Sex:</b> <a href='?src=\ref[src];sex=1'><b>[gender2text(pref.gender)]</b></a><br>"
	. += "<b>Spawn Point:</b> <a href='?src=\ref[src];spawnpoint=1'>[pref.spawnpoint]</a><br>"
	. += "<b>Team:</b> <a href='?src=\ref[src];team=1'>[pref.team]</a><br>"
	. = jointext(.,null)

/datum/category_item/player_setup_item/general/basic/OnTopic(href,list/href_list, mob/user)
	var/datum/species/S = all_species[pref.species]
	if(href_list["sex"])
		var/new_gender = input(user, "Choose your character's sex:", CHARACTER_PREFERENCE_INPUT_TITLE, pref.gender) as null|anything in S.genders
		S = all_species[pref.species]
		if(new_gender && CanUseTopic(user) && (new_gender in S.genders))
			pref.gender = new_gender

			if(!(pref.f_style in S.get_facial_hair_styles(pref.gender)))
				ResetFacialHair()

			var/list/body_builds = S.get_body_build_list(pref.gender)
			if(!(pref.body in body_builds))
				pref.body = body_builds[1]
		return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["spawnpoint"])
		var/list/spawnkeys = list()
		for(var/spawntype in spawntypes())
			spawnkeys += spawntype
		var/choice = input(user, "Where would you like to spawn?") as null|anything in spawnkeys
		if(!choice || !spawntypes()[choice] || !CanUseTopic(user))	return TOPIC_NOACTION
		pref.spawnpoint = choice
		return TOPIC_REFRESH

	else if(href_list["team"])
		var/list/teamkeys = list()
		for(var/datum/job/job in job_master.occupations)
			teamkeys += job.title
			for(var/alt in job.alt_titles)
				teamkeys += alt

		var/choice = input(user, "Who your team?") as null|anything in teamkeys
		if(choice || choice in teamkeys || CanUseTopic(user))
			pref.team = choice
			return TOPIC_REFRESH_UPDATE_PREVIEW

	return ..()

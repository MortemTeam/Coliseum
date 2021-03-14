GLOBAL_VAR(spawntypes)

/proc/spawntypes()
	if(!GLOB.spawntypes)
		GLOB.spawntypes = list()
		for(var/type in typesof(/datum/spawnpoint/arena)-/datum/spawnpoint/arena)
			var/datum/spawnpoint/S = type
			var/display_name = initial(S.display_name)
			if((display_name in GLOB.using_map.allowed_spawns) || initial(S.always_visible))
				GLOB.spawntypes[display_name] = new S
				GLOB.spawntypes[display_name].turfs = list()
	return GLOB.spawntypes

/datum/spawnpoint
	var/msg		  //Message to display on the arrivals computer.
	var/list/turfs  //List of turfs to spawn on.
	var/display_name //Name used in preference setup.
	var/always_visible = FALSE	// Whether this spawn point is always visible in selection, ignoring map-specific settings.
	var/list/restrict_job = null
	var/list/disallow_job = null

/datum/spawnpoint/arena
	var/spawn_count = 1
	always_visible = TRUE

	random
		display_name = "Random"

	command_post
		display_name = "Command Post"
	hangar
		display_name = "Guest Shuttle"
	hangar_post
		display_name = "Hangar Post"
	stash
		display_name = "Stash"

	left_toilet
		display_name = "Left Toilet"
	right_toilet
		display_name = "Right Toilet"

	first_dorm
		display_name = "First Dorm"
	second_dorm
		display_name = "Second Dorm"
	third_dorm
		display_name = "Third Dorm"

	canteen
		display_name = "Canteen"
	kitchen
		display_name = "Kitchen"
	hall_post
		display_name = "Hall Post"
	bar_backroom
		display_name = "Bar Backroom"
	storage
		display_name = "Storage"

	first_pod
		display_name = "First Pod"
	second_pod
		display_name = "Second Pod"
	third_pod
		display_name = "Third Pod"

	left_thruster
		display_name = "Left Thruster"
	right_thruster
		display_name = "Right Thruster"

/datum/spawnpoint/proc/check_job_spawning(job)
	if(restrict_job && !(job in restrict_job))
		return 0

	if(disallow_job && (job in disallow_job))
		return 0

	return 1

#ifdef UNIT_TEST
/datum/spawnpoint/Del()
	crash_with("Spawn deleted: [log_info_line(src)]")
	..()

/datum/spawnpoint/Destroy()
	crash_with("Spawn destroyed: [log_info_line(src)]")
	. = ..()
#endif

/datum/spawnpoint/arrivals
	display_name = "Arrivals Shuttle"
	msg = "has arrived on the station"

/datum/spawnpoint/arrivals/New()
	..()
	turfs = GLOB.latejoin

/datum/spawnpoint/gateway
	display_name = "Gateway"
	msg = "has completed translation from offsite gateway"

/datum/spawnpoint/gateway/New()
	..()
	turfs = GLOB.latejoin_gateway

/datum/spawnpoint/cryo
	display_name = "Cryogenic Storage"
	msg = "has completed cryogenic revival"
	disallow_job = list("Cyborg")

/datum/spawnpoint/cryo/New()
	..()
	turfs = GLOB.latejoin_cryo

/datum/spawnpoint/cyborg
	display_name = "Cyborg Storage"
	msg = "has been activated from storage"
	restrict_job = list("Cyborg")

/datum/spawnpoint/cyborg/New()
	..()
	turfs = GLOB.latejoin_cyborg

/datum/spawnpoint/default
	display_name = DEFAULT_SPAWNPOINT_ID
	msg = "has arrived on the station"
	always_visible = TRUE
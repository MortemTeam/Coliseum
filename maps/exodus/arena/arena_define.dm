
/datum/map/exodus/arena
	name = "Casino Royale"
	full_name = "Casino"
	path = "exodus/arena"

	station_levels = list(1)
	admin_levels = list()
	contact_levels = list()
	player_levels = list()
	sealed_levels = list()
	empty_levels = list()
	accessible_z_levels = list()
	//base_turf_by_z = list("1" = /turf/simulated/floor/asteroid) // Moonbase
	dynamic_z_levels = list("1" = 'casino.dmm')

	station_name  = "Casino Ship"
	station_short = "Casino"
	dock_name     = "Casino Dock"
	boss_name     = "Hetorm Show"
	boss_short    = "Hetorm TV"
	company_name  = "Hetorm Co."
	company_short = "HS"
	system_name   = "Nyx"

	allowed_spawns = list(
		"Random",
		"Command Post", "Guest Shuttle", "Hangar Post", "Stash",
		"Left Toilet", "Right Toilet",
		"First Dorm", "Second Dorm", "Third Dorm",
		"Canteen", "Kitchen", "Hall Post", "Bar Backroom", "Storage",
		"First Pod", "Second Pod", "Third Pod", "Left Thruster", "Right Thruster",
	)

	allowed_jobs = list(/datum/job/arena/gladiator)
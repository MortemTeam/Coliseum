/datum/event/supply_drop
	var/available_items = list(
		list(/obj/machinery/recharger),
		list(/obj/item/weapon/gun/launcher/rocket, /obj/item/ammo_casing/rocket),
		list(/obj/item/weapon/rcd/full_loaded),
		list(/obj/item/weapon/rig/light),
		list(/obj/item/weapon/rig/combat),
		list(/obj/item/weapon/rig/security),
	)

/datum/event/supply_drop/setup()
	var/list/turfs = list()
	for(var/turf/simulated/T in world)
		turfs.Add(T)

	var/turf/T = pick(turfs)
	var/list/items = pick(available_items)
	command_announcement.Announce("Calling supply drop in [T.loc]. Wait 10 seconds...", "Your Master", zlevels = list(1))
	sleep(100)
	var/datum/supply_drop_loot/SDL = new /datum/supply_drop_loot
	SDL.contents = items
	new /datum/random_map/droppod/supply(null, T.x, T.y, T.z, supplied_drop = SDL)
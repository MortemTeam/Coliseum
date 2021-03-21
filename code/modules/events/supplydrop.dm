/datum/event/supply_drop
	var/available_items = list(
		/obj/machinery/recharger = 5,
		/obj/item/weapon/gun/launcher/rocket = 5,
		/obj/item/weapon/rcd/full_loaded = 5,
		/obj/item/weapon/rig/light = 5,
		/obj/item/weapon/rig/combat = 5,
		/obj/item/weapon/rig/security = 5,
	)

/datum/event/supply_drop/setup()
	var/list/areas = list()
	for(var/area/A in world)
		if(!(A.name in list("System Map", "Space"))
			areas[A] = list()
			for(var/turf/T in A)
				areas[A].Add(T)

	var/area/A = pick(areas)
	var/turf/T = pick(A)
	var/obj/item = pick(available_items)

	command_announcement.Announce("Calling supply drop in [A] with [initial(item.name)].", "Your Master", zlevels = list(1))
	var/datum/supply_drop_loot/SDL = new /datum/supply_drop_loot
	SDL.contents = list(item)
	new /datum/random_map/droppod/supply(null, T.x, T.y, T.z, supplied_drop = SDL)
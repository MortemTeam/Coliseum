/obj/item/weapon/grenade/barothermal
	name = "barothermal grenade"
	desc = "A hand held barothermal grenade, with an adjustable timer."
	icon_state = "barothermal"
	item_state = "barothermal"
	var/to_splash = 100

/obj/item/weapon/grenade/barothermal/detonate()
	var/turf/T = get_turf(src)
	var/datum/reagents/R = new(to_splash)
	R.add_reagent(/datum/reagent/fuel, to_splash)
	R.splash(T, to_splash, min_spill=4, max_spill=5)
	T.hotspot_expose(700,125)
	qdel(src)
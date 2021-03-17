/client
	var/mouse_target // save last atom entry
	var/mouse_pushed = 0

/client/proc/resolve_world_target(var/a)

	if (istype(a, /obj/screen/click_catcher))
		var/obj/screen/click_catcher/CC = a
		return CC.resolve(mob)

	if (istype(a, /turf))
		return a

	else if (istype(a, /atom))
		var/atom/A = a
		if (istype(A.loc, /turf))
			return A
	return null

/client/MouseDown(object,location,control,params)
	..()
	if(findtext(params, "middle"))
		return

	if(istype(object, /obj/screen))
		if(istype(object, /obj/screen/click_catcher))
			var/obj/screen/click_catcher/CC = object
			object = CC.resolve(mob)
		else:
			return

	to_chat(world, "[params]")
	mouse_pushed = 1
	var/mob/living/carbon/human/H = mob
	if(H && !H.in_throw_mode)
		var/G = H.get_active_hand()
		if(istype(G, /obj/item/weapon/gun))
			var/obj/item/weapon/gun/GUN = G
			var/dist = get_dist(mouse_target, H)
			if(GUN && (istype(mouse_target, /turf) || dist > 1))
				GUN.afterattack(mouse_target, H) // 1 indicates adjacency
				H.setClickCooldown(1 SECONDS)

/client/MouseDrag(over_object, var/atom/src_location, over_location, src_control, over_control, params)
	src_location = resolve_world_target(src_location)
	if(src_location)
		src_location.MouseEntered(src_location, src_control, params)

/client/MouseUp(object,location,control,params)
	mouse_pushed = 0

/atom/MouseEntered(location, control, params)
	if(istype(usr, /mob/living))
		var/client/C = usr.client
		if(istype(src, /obj/screen/click_catcher))
			var/obj/screen/click_catcher/CC = src
			C.mouse_target = CC.resolve(usr)
		else
			C.mouse_target = src
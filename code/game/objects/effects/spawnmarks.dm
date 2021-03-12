/obj/effect/spawnmaker
	name = "spawnmark"
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x2"
	anchored = 1.0
	unacidable = 1
	simulated = 0
	invisibility = 101

	var/spawnpoint
	var/delete_me = 0

/obj/effect/spawnmaker/Initialize()
	..()
	if(!GLOB.spawntypes)
		spawntypes()

	GLOB.spawntypes[spawnpoint].turfs += loc

/obj/effect/spawnmaker/proc/delete()
	delete_me = 1

/obj/effect/spawnmaker/Initialize()
	. = ..()
	if(delete_me)
		return INITIALIZE_HINT_QDEL

/obj/effect/spawnmaker/Destroy()
	landmarks_list -= src
	return ..()

/obj/effect/spawnmaker/command_post
	spawnpoint = "Command Post"
/obj/effect/spawnmaker/hangar
	spawnpoint = "Guest Shuttle"
/obj/effect/spawnmaker/hangar_post
	spawnpoint = "Hangar Post"
/obj/effect/spawnmaker/stash
	spawnpoint = "Stash"

/obj/effect/spawnmaker/left_toilet
	spawnpoint = "Left Toilet"
/obj/effect/spawnmaker/right_toilet
	spawnpoint = "Right Toilet"

/obj/effect/spawnmaker/first_dorm
	spawnpoint = "First Dorm"
/obj/effect/spawnmaker/second_dorm
	spawnpoint = "Second Dorm"
/obj/effect/spawnmaker/third_dorm
	spawnpoint = "Third Dorm"

/obj/effect/spawnmaker/canteen
	spawnpoint = "Canteen"
/obj/effect/spawnmaker/kitchen
	spawnpoint = "Kitchen"
/obj/effect/spawnmaker/hall_post
	spawnpoint = "Hall Post"
/obj/effect/spawnmaker/bar_backroom
	spawnpoint = "Bar Backroom"
/obj/effect/spawnmaker/storage
	spawnpoint = "Storage"

/obj/effect/spawnmaker/first_pod
	spawnpoint = "First Pod"
/obj/effect/spawnmaker/second_pod
	spawnpoint = "Second Pod"
/obj/effect/spawnmaker/third_pod
	spawnpoint = "Third Pod"

/obj/effect/spawnmaker/left_thruster
	spawnpoint = "Left Thruster"
/obj/effect/spawnmaker/right_thruster
	spawnpoint = "Right Thruster"
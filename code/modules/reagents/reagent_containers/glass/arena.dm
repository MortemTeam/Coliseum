/obj/item/weapon/reagent_containers/glass/bottle/arena
	icon = 'icons/obj/chemical.dmi'
	icon_state = "bottle-4"
	var/list/reagents_to_fill

/obj/item/weapon/reagent_containers/glass/bottle/arena/Initialize()
	..()
	for(var/reagent in reagents_to_fill)
		reagents.add_reagent(reagent, reagents_to_fill[reagent])
	update_icon()

/obj/item/weapon/reagent_containers/glass/bottle/arena/dylovene
    name = "dylovene bottle"
    reagents_to_fill = list(/datum/reagent/dylovene = 20)

/obj/item/weapon/reagent_containers/glass/bottle/arena/tramadol
    name = "tramadol bottle"
    reagents_to_fill = list(/datum/reagent/tramadol = 20)

/obj/item/weapon/reagent_containers/glass/bottle/arena/inaprovaline
    name = "inaprovaline bottle"
    reagents_to_fill = list(/datum/reagent/inaprovaline = 20)

/obj/item/weapon/reagent_containers/glass/bottle/arena/bicaridine
    name = "bicaridine bottle"
    reagents_to_fill = list(/datum/reagent/bicaridine = 20)

/obj/item/weapon/reagent_containers/glass/bottle/arena/dermaline
    name = "dermaline bottle"
    reagents_to_fill = list(/datum/reagent/dermaline = 20)

/obj/item/weapon/reagent_containers/glass/bottle/arena/dexalinplus
    name = "dexalin plus bottle"
    reagents_to_fill = list(/datum/reagent/dexalinp = 20)

/obj/item/weapon/reagent_containers/glass/bottle/arena/tricordrazine
    name = "tricordrazine bottle"
    reagents_to_fill = list(/datum/reagent/tricordrazine = 20)

/obj/item/weapon/reagent_containers/glass/bottle/arena/peridaxon
    name = "peridaxon bottle"
    reagents_to_fill = list(/datum/reagent/peridaxon = 20)

/obj/item/weapon/reagent_containers/glass/bottle/arena/hyperzine
    name = "hyperzine bottle"
    reagents_to_fill = list(/datum/reagent/hyperzine = 20)

/obj/item/weapon/reagent_containers/glass/bottle/arena/synaptizine
    name = "synaptizine bottle"
    reagents_to_fill = list(/datum/reagent/synaptizine = 20)

/obj/item/weapon/reagent_containers/glass/bottle/arena/kelobic
    name = "kelobic bottle"
    reagents_to_fill = list(
		/datum/reagent/kelotane = 7.5,
		/datum/reagent/bicaridine = 7.5,
	)

/obj/item/weapon/reagent_containers/glass/bottle/arena/keloderm
    name = "keloderm bottle"
    reagents_to_fill = list(
		/datum/reagent/kelotane = 7.5,
		/datum/reagent/dermaline = 7.5,
	)

/obj/item/weapon/reagent_containers/glass/bottle/arena/hypersynap
    name = "hypersynap bottle"
    reagents_to_fill = list(
		/datum/reagent/hyperzine = 7.5,
		/datum/reagent/synaptizine = 7.5,
	)

/obj/item/weapon/reagent_containers/glass/bottle/arena/rezaxadon
	name = "rezaxadon bottle"
	reagents_to_fill = list(
		/datum/reagent/rezadone = 7.5,
		/datum/reagent/peridaxon = 7.5,
	)
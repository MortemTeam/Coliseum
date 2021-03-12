obj/item/weapon/reagent_containers/glass/bottle/arena
	icon = 'icons/obj/chemical.dmi'
	icon_state = "bottle-4"
	var/list/reagents_to_fill

obj/item/weapon/reagent_containers/glass/bottle/arena/Initialize()
	..()
	for(var/reagent in reagents_to_fill)
		reagents.add_reagent(reagent, reagents_to_fill[reagent])
	update_icon()

obj/item/weapon/reagent_containers/glass/bottle/arena/tramadol
    name = "tramadol bottle"
    reagents_to_fill = list(/datum/reagent/tramadol = 20)

obj/item/weapon/reagent_containers/glass/bottle/arena/inaprovaline
    name = "inaprovaline bottle"
    reagents_to_fill = list(/datum/reagent/inaprovaline = 20)

obj/item/weapon/reagent_containers/glass/bottle/arena/bicaridine
    name = "bicaridine bottle"
    reagents_to_fill = list(/datum/reagent/bicaridine = 20)

obj/item/weapon/reagent_containers/glass/bottle/arena/dermaline
    name = "dermaline bottle"
    reagents_to_fill = list(/datum/reagent/dermaline = 20)

obj/item/weapon/reagent_containers/glass/bottle/arena/dexalinplus
    name = "dexalin plus bottle"
    reagents_to_fill = list(/datum/reagent/dexalinp = 20)

obj/item/weapon/reagent_containers/glass/bottle/arena/tricordrazine
    name = "tricordrazine bottle"
    reagents_to_fill = list(/datum/reagent/tricordrazine = 20)

obj/item/weapon/reagent_containers/glass/bottle/arena/imidazoline
    name = "imidazoline bottle"
    reagents_to_fill = list(/datum/reagent/imidazoline = 20)

obj/item/weapon/reagent_containers/glass/bottle/arena/peridaxon
    name = "peridaxon bottle"
    reagents_to_fill = list(/datum/reagent/peridaxon = 20)
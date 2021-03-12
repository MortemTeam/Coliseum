/obj/structure/closet/random
	name = "random closet"
	desc = "It's a storage random items."

	var/list/random_list
	var/random_count = 3

/obj/structure/closet/random/New()
    ..()
    for(var/iter_count in 1 to random_count)
        var/RI = pickweight(random_list)
        new RI(src)

// 17x3, 32x2 = 115
/obj/structure/closet/random/engineering
    name = "engineering closet"
    icon_state = "yellow"
    icon_closed = "yellow"
    random_list = list(
        /obj/item/weapon/rcd = 10,
        /obj/item/device/multitool = 10,
        /obj/item/weapon/extinguisher = 10,

        /obj/item/clothing/shoes/workboots = 30,
        /obj/item/clothing/head/beret/engineering = 30,
        /obj/item/clothing/head/welding = 30,
        /obj/item/clothing/gloves/insulated = 30,
        /obj/item/clothing/mask/gas = 30,
        /obj/item/clothing/accessory/storage/brown_vest = 30,
        /obj/item/clothing/glasses/hud/standard/meson = 30,
        /obj/item/weapon/crowbar/brace_jack = 30,
    )

// 17x3, 32x2 = 115
/obj/structure/closet/random/medical
    name = "medical closet"
    icon_state = "blue"
    icon_closed = "blue"
    random_list = list(
        /obj/item/weapon/reagent_containers/hypospray = 10,
        /obj/item/weapon/storage/firstaid/surgery = 10,

        /obj/item/clothing/suit/storage/toggle/labcoat = 30,
        /obj/item/clothing/glasses/hud/standard/medical = 30,
        /obj/item/clothing/gloves/latex = 30,
        /obj/item/clothing/gloves/latex/nitrile = 30,
        /obj/item/weapon/storage/belt/medical/emt = 30,
        /obj/item/weapon/reagent_containers/syringe = 30,

        /obj/item/weapon/reagent_containers/glass/bottle/arena/tramadol = 30,
        /obj/item/weapon/reagent_containers/glass/bottle/arena/inaprovaline = 30,
        /obj/item/weapon/reagent_containers/glass/bottle/arena/bicaridine = 30,
        /obj/item/weapon/reagent_containers/glass/bottle/arena/dermaline = 30,
        /obj/item/weapon/reagent_containers/glass/bottle/arena/dexalinplus = 30,
        /obj/item/weapon/reagent_containers/glass/bottle/arena/tricordrazine = 30,
        /obj/item/weapon/reagent_containers/glass/bottle/arena/imidazoline = 30,
        /obj/item/weapon/reagent_containers/glass/bottle/arena/peridaxon = 30,
    )

// 17x6, 32x4, 28x1 = 258
/obj/structure/closet/random/science
    name = "science closet"
    icon_state = "pink"
    icon_closed = "pink"
    random_list = list(
        /obj/item/clothing/mask/gas/syndicate = 10,
        /obj/item/clothing/glasses/hud/standard/thermal = 10,
        /obj/item/clothing/glasses/hud/standard/night = 10,
        /obj/item/clothing/glasses/hud/standard/material = 10,
        /obj/item/clothing/shoes/syndigaloshes = 10,
        /obj/item/device/chameleon = 10,
        /obj/item/device/flashlight/flashdark = 10,
        /obj/item/weapon/storage/firstaid/combat = 10,
        /obj/item/weapon/defibrillator/compact/combat/loaded = 10,
        /obj/item/bodybag/cryobag = 10,
        /obj/item/clothing/suit/armor/reactive = 10,
    )

// 17x18, 32x4, 28x1 = 462
/obj/structure/closet/random/wardrobe
    name = "wardrobe closet"
    icon_state = "red"
    icon_closed = "red"
    random_list = list(
        /obj/item/weapon/gun/energy/crossbow = 5,
        /obj/item/weapon/melee/energy/sword = 5,
        /obj/item/weapon/gun/projectile/automatic/sts35 = 5,
        /obj/item/weapon/gun/energy/pulse_rifle = 5,
        /obj/item/weapon/gun/magnetic/railgun/flechette = 5,
        /obj/item/weapon/gun/magnetic/railgun = 5,
        /obj/item/weapon/gun/projectile/magnum_pistol = 5,
        /obj/item/clothing/suit/armor/hos/jensen = 5,

        /obj/item/weapon/storage/box/smokes = 10,
        /obj/item/weapon/storage/box/frags = 10,
        /obj/item/weapon/storage/box/flashbangs = 10,

        /obj/item/weapon/gun/energy/gun = 20,
        /obj/item/weapon/gun/projectile/automatic/c20r = 20,
        /obj/item/weapon/gun/projectile/shotgun/pump/combat = 20,
        /obj/item/weapon/gun/projectile/revolver = 20,
        /obj/item/weapon/gun/projectile/colt/officer = 20,
        /obj/item/weapon/gun/projectile/automatic/wt550 = 20,
        /obj/item/weapon/gun/projectile/automatic/machine_pistol/mini_uzi = 20,

        /obj/item/weapon/melee/baton = 30,

        /obj/item/clothing/head/helmet = 30,
        /obj/item/clothing/head/helmet/ablative = 30,
        /obj/item/clothing/head/helmet/ballistic = 30,

        /obj/item/clothing/suit/armor/vest = 30,
        /obj/item/clothing/suit/armor/laserproof = 30,
        /obj/item/clothing/suit/armor/bulletproof = 30,
		/obj/item/clothing/glasses/hud/aviators/security = 30,
    )

// 28x1 = 28
/obj/structure/closet/random/trash
    name = "trash closet"
    icon_state = "white"
    icon_closed = "white"
    random_list = list(
        /obj/item/weapon/soap = 10,
        /obj/item/clothing/mask/pig = 10,

        /obj/item/clothing/glasses/sunglasses = 30,
        /obj/item/clothing/head/cowboy_hat = 30,
        /obj/item/clothing/head/ushanka = 30,
        /obj/item/clothing/head/beret = 30,

        /obj/item/clothing/mask/redscarf = 30,
        /obj/item/clothing/mask/ninjascarf = 30,

		/obj/item/clothing/shoes/black = 30,
        /obj/item/clothing/shoes/jackboots = 30,
        /obj/item/clothing/shoes/slippers = 30,
        /obj/item/clothing/shoes/clown_shoes = 30,
        /obj/item/clothing/shoes/sandal = 30,

        /obj/item/clothing/head/chaplain_hood = 30,
        /obj/item/clothing/suit/chaplain_hoodie = 30,

        /obj/item/clothing/suit/storage/civ_trench = 30,
        /obj/item/clothing/suit/storage/civ_trench/grey = 30,
        /obj/item/clothing/suit/storage/toggle/leathercoat = 30,
    )
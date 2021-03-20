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
    icon_state = "engineering"
    icon_closed = "engineering"
    icon_opened = "engineeringopen"
    random_list = list(
        /obj/item/weapon/rcd = 10,
        /obj/item/weapon/storage/toolbox/syndicate = 10,
        /obj/item/weapon/extinguisher = 10,

		/obj/item/device/flashlight/upgraded = 20,
		/obj/item/device/flashlight = 30,

        /obj/item/clothing/mask/gas = 30,
        /obj/item/clothing/accessory/storage/brown_vest = 30,
        /obj/item/clothing/glasses/hud/standard/meson = 30,
        /obj/item/weapon/crowbar/brace_jack = 30,

		/obj/item/weapon/rcd_ammo = 50,
    )

// 17x3, 32x2 = 115
/obj/structure/closet/random/medical
    name = "medic closet"
    icon_state = "medic"
    icon_closed = "medic"
    icon_opened = "medicopen"
    random_list = list(
        /obj/item/weapon/reagent_containers/hypospray = 10,
        /obj/item/weapon/storage/firstaid/surgery = 10,

        /obj/item/weapon/reagent_containers/glass/bottle/arena/tramadol = 20,
        /obj/item/weapon/reagent_containers/glass/bottle/arena/inaprovaline = 20,
        /obj/item/weapon/reagent_containers/glass/bottle/arena/bicaridine = 20,
        /obj/item/weapon/reagent_containers/glass/bottle/arena/dermaline = 20,
        /obj/item/weapon/reagent_containers/glass/bottle/arena/dexalinplus = 20,
        /obj/item/weapon/reagent_containers/glass/bottle/arena/tricordrazine = 20,
        /obj/item/weapon/reagent_containers/glass/bottle/arena/peridaxon = 20,
		/obj/item/weapon/reagent_containers/glass/bottle/arena/hyperzine = 20,
		/obj/item/weapon/reagent_containers/glass/bottle/arena/synaptizine = 20,
		/obj/item/roller/adv = 20,

        /obj/item/clothing/suit/storage/toggle/labcoat = 30,
        /obj/item/clothing/glasses/hud/standard/medical = 30,
        /obj/item/clothing/gloves/latex = 30,
        /obj/item/clothing/gloves/latex/nitrile = 30,
        /obj/item/weapon/storage/belt/medical/emt = 30,

		/obj/item/weapon/reagent_containers/glass/bottle/arena/kelobic = 30,
		/obj/item/weapon/reagent_containers/glass/bottle/arena/keloderm = 30,
		/obj/item/weapon/reagent_containers/glass/bottle/arena/hypersynap = 30,
		/obj/item/weapon/reagent_containers/glass/bottle/arena/rezaxadon = 30,
		/obj/item/weapon/reagent_containers/syringe = 30,

		/obj/item/stack/medical/advanced/bruise_pack = 50,
		/obj/item/stack/medical/advanced/ointment = 50,
    )

// 17x6, 32x4, 28x1 = 258
/obj/structure/closet/random/science
    name = "science closet"
    icon_state = "science"
    icon_closed = "science"
    icon_opened = "scienceopen"
    random_list = list(
		/obj/item/weapon/reagent_containers/neuromod_shell/arena = 10,
        /obj/item/clothing/glasses/hud/standard/thermal = 10,
        /obj/item/clothing/glasses/hud/standard/night = 10,
        /obj/item/clothing/glasses/hud/standard/material = 10,
        /obj/item/clothing/shoes/syndigaloshes = 10,
        /obj/item/device/chameleon = 10,
		/obj/item/device/chameleonholo = 10,
        /obj/item/device/flashlight/flashdark = 10,
        /obj/item/weapon/defibrillator/compact/combat/loaded = 10,
        /obj/item/bodybag/cryobag = 10,
        /obj/item/clothing/suit/armor/reactive = 10,
		/obj/item/device/flashlight/slime = 10,
    )

// 17x18, 32x4, 28x1 = 462
/obj/structure/closet/random/weapon
    name = "weapon closet"
    icon_state = "weapon"
    icon_closed = "weapon"
    icon_opened = "weaponopen"
    random_list = list(
        /obj/item/weapon/gun/energy/crossbow = 5,
        /obj/item/weapon/melee/energy/sword/one_hand = 5,
        /obj/item/weapon/gun/projectile/automatic/sts35 = 5,
        /obj/item/weapon/gun/magnetic/railgun/flechette = 5,
        /obj/item/weapon/gun/magnetic/railgun = 5,
        /obj/item/weapon/gun/projectile/magnum_pistol = 5,
		/obj/item/weapon/gun/projectile/automatic/l6_saw = 5,
		/obj/item/weapon/gun/projectile/revolver = 5,
		/obj/item/weapon/gun/projectile/shotgun/pump/combat/auto = 5,

        /obj/item/weapon/grenade/smokebomb = 10,
		/obj/item/weapon/grenade/chem_grenade/teargas = 10,
        /obj/item/weapon/grenade/frag/high_yield = 10,
		/obj/item/weapon/grenade/barothermal = 10,
        /obj/item/weapon/grenade/flashbang = 10,

		/obj/item/weapon/gun/projectile/revolver = 20,
        /obj/item/weapon/gun/projectile/automatic/c20r = 20,
        /obj/item/weapon/gun/projectile/shotgun/pump/combat = 20,
        /obj/item/weapon/gun/projectile/automatic/wt550 = 20,
        /obj/item/weapon/gun/projectile/automatic/machine_pistol/mini_uzi = 20,
		/obj/item/weapon/gun/energy/laser = 20,

		/obj/item/device/flashlight/flare = 30,
		/obj/item/device/flashlight/maglight = 30,
        /obj/item/clothing/head/helmet/ablative = 30,
        /obj/item/clothing/head/helmet/ballistic = 30,
		/obj/item/clothing/suit/armor/laserproof = 30,
        /obj/item/clothing/suit/armor/bulletproof = 30,

		/obj/item/weapon/melee/baton = 50,
		/obj/item/weapon/gun/projectile/colt/officer = 50,
		/obj/item/weapon/shield/riot = 50,
		/obj/item/clothing/mask/gas/police = 50,
        /obj/item/clothing/suit/storage/vest/police = 50,
		/obj/item/clothing/head/helmet/police = 50,
		/obj/item/clothing/glasses/hud/aviators/security = 50,
    )

// 28x1 = 28
/obj/structure/closet/random/trash
    name = "trash closet"
    icon_state = "trash"
    icon_closed = "trash"
    icon_opened = "trashopen"
    random_list = list(
        /obj/item/weapon/soap = 10,
        /obj/item/clothing/mask/pig = 10,
		/obj/item/clothing/suit/armor/hos/jensen = 10,
		/obj/item/clothing/head/HoS/german = 10,
		/obj/item/weapon/towel = 10,

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

		/obj/item/weapon/tank/emergency/oxygen/double = 50,
		/obj/item/clothing/mask/gas/clear = 50,
    )
/datum/map/module
	allowed_jobs = list(/datum/job/captain, /datum/job/chief_engineer, /datum/job/hop, /datum/job/officer, /datum/job/doctor, /datum/job/engineer, /datum/job/qm, /datum/job/roboticist, /datum/job/assistant, /datum/job/cyborg)

/datum/job/captain
	supervisors = "Корпоративное Регулирование и ваша адекватность"
	outfit_type = /decl/hierarchy/outfit/job/module/captain

/datum/job/captain/get_access()
	return get_all_station_access()

/datum/job/chief_engineer
	title = "Chief Engineer"
	supervisors = "Капитан"
	department_flag = ENG
	outfit_type = /decl/hierarchy/outfit/job/module/chief_engineer

/datum/job/doctor
	title = "Doctor"
	supervisors = "Капитан"
	outfit_type = /decl/hierarchy/outfit/job/module/doctor
	alt_titles = list(
		"Surgeon",
		"Xeno Doctor")
	total_positions = 3
	spawn_positions = 3

/datum/job/hop
	title = "First Mate"
	supervisors = "Капитан"
	outfit_type = /decl/hierarchy/outfit/job/module/mate

/datum/job/assistant
	title = "Deck Hand"
	supervisors = "весь персонал корабля"
	outfit_type = /decl/hierarchy/outfit/job/module/hand
	alt_titles = list(
		"Steward" = /decl/hierarchy/outfit/job/module/hand/cook,
		"Cargo Hand",
		"Digger" = /decl/hierarchy/outfit/job/module/hand/digger,
		"Passenger")

/datum/job/engineer
	total_positions = 2
	spawn_positions = 2

/datum/job/roboticist
	outfit_type = /decl/hierarchy/outfit/job/module/roboticist

/datum/job/qm
	outfit_type = /decl/hierarchy/outfit/job/module/qm

/datum/job/officer
	outfit_type = /decl/hierarchy/outfit/job/module/security
	total_positions = 2
	spawn_positions = 2

/datum/job/warden
	outfit_type = /decl/hierarchy/outfit/job/module/warden

/datum/job/hos
	outfit_type = /decl/hierarchy/outfit/job/module/hos

/datum/job/cyborg
	total_positions = 2
	spawn_positions = 2


// OUTFITS
#define MODULE_OUTFIT_JOB_NAME(job_name) ("Module - Job - " + job_name)

/decl/hierarchy/outfit/job/module/
	hierarchy_type = /decl/hierarchy/outfit/job/module
	pda_type = null
	pda_slot = slot_l_store
	l_pocket = /obj/item/weapon/storage/wallet/poly
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/module/captain
	name = MODULE_OUTFIT_JOB_NAME("Captain")
	uniform = /obj/item/clothing/under/casual_pants/classicjeans
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/device/pda/captain
	r_pocket = /obj/item/device/radio
	id_type = /obj/item/weapon/card/id/gold


/decl/hierarchy/outfit/job/module/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/toggleable/hawaii/random/eyegore = new()
		if(uniform.can_attach_accessory(eyegore))
			uniform.attach_accessory(null, eyegore)
		else
			qdel(eyegore)

/decl/hierarchy/outfit/job/module/chief_engineer
	name = MODULE_OUTFIT_JOB_NAME("Chief Engineer")
	uniform = /obj/item/clothing/under/rank/chief_engineer
	glasses = /obj/item/clothing/glasses/welding/superior
	suit = /obj/item/clothing/suit/storage/hazardvest
	gloves = /obj/item/clothing/gloves/thick
	shoes = /obj/item/clothing/shoes/workboots
	pda_type = /obj/item/device/pda/heads/ce
	l_hand = /obj/item/weapon/wrench
	belt = /obj/item/weapon/storage/belt/utility/full
	id_type = /obj/item/weapon/card/id/engineering/head
	r_pocket = /obj/item/device/radio
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/module/doctor
	name = MODULE_OUTFIT_JOB_NAME("Doctor")
	uniform = /obj/item/clothing/under/det/black
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/laceup

/decl/hierarchy/outfit/job/module/mate
	name = MODULE_OUTFIT_JOB_NAME("First Mate")
	uniform = /obj/item/clothing/under/suit_jacket/checkered
	shoes = /obj/item/clothing/shoes/laceup
	id_type = /obj/item/weapon/card/id/silver
	glasses = /obj/item/clothing/glasses/sunglasses/big
	l_hand = /obj/item/weapon/clipboard

/decl/hierarchy/outfit/job/module/roboticist
	name = MODULE_OUTFIT_JOB_NAME("Roboticist")
	uniform = /obj/item/clothing/under/rank/roboticist
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/black
	glasses = /obj/item/clothing/glasses/welding
	belt = /obj/item/weapon/storage/belt/utility

/decl/hierarchy/outfit/job/module/roboticist/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.gender == "female")
		if(prob(50))
			uniform = /obj/item/clothing/under/rank/roboticist/skirt
	else return

/decl/hierarchy/outfit/job/module/qm
	name = MODULE_OUTFIT_JOB_NAME("Quartermaster")
	uniform = /obj/item/clothing/under/rank/cargo
	shoes = /obj/item/clothing/shoes/brown
	glasses = /obj/item/clothing/glasses/sunglasses
	l_hand = /obj/item/weapon/clipboard
	id_type = /obj/item/weapon/card/id/cargo/head

/decl/hierarchy/outfit/job/module/security
	name = MODULE_OUTFIT_JOB_NAME("Security Guard")
	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/jackboots
	glasses = /obj/item/clothing/glasses/sunglasses/big
	belt = /obj/item/weapon/melee/baton/loaded
	head = /obj/item/clothing/head/warden
	id_type = /obj/item/weapon/card/id/security
	r_pocket = /obj/item/device/radio
	suit = /obj/item/clothing/suit/armor/pcarrier/medium
	gloves = /obj/item/clothing/gloves/thick

/decl/hierarchy/outfit/job/module/warden
	name = MODULE_OUTFIT_JOB_NAME("Warden")
	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/jackboots
	glasses = /obj/item/clothing/glasses/sunglasses/big
	belt = /obj/item/weapon/melee/baton/loaded
	head = /obj/item/clothing/head/warden
	id_type = /obj/item/weapon/card/id/security
	r_pocket = /obj/item/device/radio
	suit = /obj/item/clothing/suit/armor/pcarrier/medium
	gloves = /obj/item/clothing/gloves/thick

/decl/hierarchy/outfit/job/module/hos
	name = MODULE_OUTFIT_JOB_NAME("Head Of Security")
	uniform = /obj/item/clothing/under/syndicate
	shoes = /obj/item/clothing/shoes/jackboots
	glasses = /obj/item/clothing/glasses/sunglasses/big
	belt = /obj/item/weapon/melee/baton/loaded
	head = /obj/item/clothing/head/warden
	id_type = /obj/item/weapon/card/id/security
	r_pocket = /obj/item/device/radio
	suit = /obj/item/clothing/suit/armor/pcarrier/medium
	gloves = /obj/item/clothing/gloves/thick

/obj/structure/closet/secure_closet/security/bearcat
	name = "security guard's locker"
	req_access = list(access_brig)
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_broken = "secbroken"
	icon_off = "secoff"

/obj/structure/closet/secure_closet/security/bearcat/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/security, /obj/item/weapon/storage/backpack/satchel_sec)),
		new/datum/atom_creator/simple(/obj/item/weapon/storage/backpack/dufflebag/sec, 50),
		/obj/item/clothing/mask/gas/half,
		/obj/item/weapon/handcuffs,
		/obj/item/weapon/storage/belt/security,
		/obj/item/device/flash,
		/obj/item/device/radio/off,
		/obj/item/taperoll/police,
		/obj/item/device/hailer,
		/obj/item/weapon/gun/energy/stunrevolver,
		/obj/item/device/holowarrant,
	)

/decl/hierarchy/outfit/job/module/hand
	name = MODULE_OUTFIT_JOB_NAME("Deck Hand")

/decl/hierarchy/outfit/job/module/hand/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(list(/obj/item/clothing/under/overalls,/obj/item/clothing/under/focal,/obj/item/clothing/under/hazard,/obj/item/clothing/under/rank/cargotech,/obj/item/clothing/under/color/black,/obj/item/clothing/under/color/grey,/obj/item/clothing/under/casual_pants/track, ))

/decl/hierarchy/outfit/job/module/hand/cook
	name = MODULE_OUTFIT_JOB_NAME("Steward")
	head = /obj/item/clothing/head/chefhat
	suit = /obj/item/clothing/suit/chef/classic

/decl/hierarchy/outfit/job/module/hand/digger
	name = MODULE_OUTFIT_JOB_NAME("Digger")
	suit = /obj/item/clothing/suit/chef/classic
	uniform = /obj/item/clothing/under/rank/miner
	r_pocket = /obj/item/device/flashlight/lantern
	belt = /obj/item/weapon/pickaxe

/decl/hierarchy/outfit/job/module/hand/engine
	name = MODULE_OUTFIT_JOB_NAME("Junior Engineer")
	head = /obj/item/clothing/head/hardhat
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/module/hand/engine/pre_equip(mob/living/carbon/human/H)
	..()
	if(prob(50))
		suit = /obj/item/clothing/suit/storage/hazardvest
/datum/map/module
	name = "Theta"
	full_name = "Theta-13"
	path = "module"

	station_name  = "NSV Theta"
	station_short = "Theta"
	dock_name     = "NAS Crescent"
	boss_name     = "Central Command"
	boss_short    = "Centcomm"
	company_name  = "NanoTrasen"
	company_short = "NT"
	company_short = "NT"

	overmap_event_areas = 12

	usable_email_tlds = list("freemail.nt")
	map_admin_faxes = list("NanoTrasen Central Office")

/*
	station_levels = list(1,2,3)
	contact_levels = list(1,2,3)
	admin_levels = list(6)
*/
	evac_controller_type = /datum/evacuation_controller/lifepods
	lobby_icon = 'maps/module/module_lobby.dmi'
	lobby_screens = list("title")

	allowed_spawns = list("Cryogenic Storage")
	default_spawn = "Cryogenic Storage"
	use_overmap = 1
	num_exoplanets = 0

	emergency_shuttle_leaving_dock = "Внимание всему персоналу: спасательные капсулы активированы, maintaining burn for %ETA%."

	emergency_shuttle_called_message = "Внимание всему персоналу: процедура экстренной эвакуации началась. До запуска спасательных капсул %ETA%"
	emergency_shuttle_called_sound = sound('sound/AI/torch/abandonship.ogg', volume = 45)

	emergency_shuttle_recall_message = "Внимание всему персоналу: процедура экстренной эвакуации прекращена. Возвращайтесь к выполнению своих обязанностей."

	starting_money = 15000
	department_money = 5000
	salary_modifier = 0.5

/datum/map/module/map_info(victim)
	to_chat(victim, "Вы находитесь на борту <b>NanoTrasenScienceVessel Theta,</b> что был отправлен с целью исследования территориbи. Модуль находится на фронтире исследованного космоса, и если точнее - на севере Правительства Солнечной Системы. Основная задача всей вашей операции - обновление карт на границе исследованного космоса.")

/datum/map/module/setup_map()
	..()
	GLOB.traders += new /datum/trader/xeno_shop
	GLOB.traders += new /datum/trader/medical
	GLOB.traders += new /datum/trader/mining
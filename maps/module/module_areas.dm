/area/ship/module
	name = "\improper Science Vessel"
//	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg')
	icon_state = "start"

/area/ship/module/lower/
	name = "\improper Third Deck"

/area/ship/module/middle/
	name = "\improper Second Deck"

/area/ship/module/upper/
	name = "\improper First Deck"

/*
/area/ship/module/crew
	name = "\improper Crew Compartements"
	icon_state = "crew_quarters"

/area/ship/module/crew/hallway/port
	name = "\improper Crew Hallway - Port"

/area/ship/module/crew/hallway/starboard
	name = "\improper Crew Hallway - Starboard"

/area/ship/module/crew/kitchen
	name = "\improper Galley"
	icon_state = "kitchen"

/area/ship/module/crew/cryo
	name = "\improper Cryo Storage"
	icon_state = "cryo"

/area/ship/module/crew/dorms1
	name = "\improper Crew Cabin #1"
	icon_state = "green"

/area/ship/module/crew/dorms2
	name = "\improper Crew Cabin #2"
	icon_state = "purple"

/area/ship/module/crew/dorms3
	name = "\improper Crew Cabin #3"
	icon_state = "yellow"

/area/ship/module/crew/gym
	name = "\improper Gym"
	icon_state = "fitness"

/area/ship/module/crew/saloon
	name = "\improper Saloon"
	icon_state = "conference"

/area/ship/module/crew/toilets
	name = "\improper Bathrooms"
	icon_state = "toilet"
	turf_initializer = /decl/turf_initializer/maintenance

/area/ship/module/crew/wash
	name = "\improper Washroom"
	icon_state = "locker"

/area/ship/module/crew/medbay
	name = "\improper Medical Bay"
	icon_state = "medbay"

/area/ship/module/top/hallway/port
	name = "\improper Top Hallway - Port"
	icon_state = "hallP"

/area/ship/module/top/hallway/starbound
	name = "\improper Top Hallway - Starbound"
	icon_state = "hallS"

/area/ship/module/top/hallway/aft
	name = "\improper Top Hallway - Aft"
	icon_state = "hallA"

/area/ship/module/top/research
	name = "\improper Research"
	icon_state = "devlab"

/area/ship/module/top/robotics
	name = "\improper Robotic Maintenance"
	icon_state = "robotics"

/area/ship/module/top/den
	name = "\improper Den"
	icon_state = "bar"

/area/ship/module/top/aft_solars
	name = "\improper Aft Solars"
	icon_state = "panelsS"

/area/ship/module/top/escape_port
	name = "\improper Fore Top Escape Pods"
	icon_state = "green"

/area/ship/module/top/aft_solars/control
	name = "\improper Aft Solars Control"
	icon_state = "SolarcontrolS"

/area/ship/module/cargo
	name = "\improper Cargo Hold"
	icon_state = "quartstorage"

/area/ship/module/cargo/lower
	name = "\improper Lower Cargo Hold"

/area/ship/module/dock
	name = "\improper Docking Bay"
	icon_state = "entry_1"

/area/ship/module/garden
	name = "\improper Garden"
	icon_state = "green"

/area/ship/module/unused
	name = "\improper Compartment 2-B"
	icon_state = "yellow"
	turf_initializer = /decl/turf_initializer/maintenance
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg')

/area/ship/module/hidden
	name = "\improper Unknown" //shielded compartment
	icon_state = "auxstorage"

/area/ship/module/escape_port
	name = "\improper Port Escape Pods"
	icon_state = "green"

/area/ship/module/security
	name = "\improper Brig"
	icon_state = "red"

/area/ship/module/escape_star
	name = "\improper Starboard Escape Pods"
	icon_state = "yellow"

/area/ship/module/broken1
	name = "\improper Compartment 1-A"
	icon_state = "green"

/area/ship/module/broken2
	name = "\improper Compartment 1-B"
	icon_state = "yellow"

/area/ship/module/gambling
	name = "\improper Compartment 1-C"
	icon_state = "cave"

/area/ship/module/ore_melting
	name = "\improper Smelting Section"
	icon_state = "cave"

/area/ship/module/middle/requisition
	name = "\improper Requisition"
	icon_state = "storage"

/area/ship/module/maintenance
	name = "\improper Maintenance Compartments"
	icon_state = "amaint"

/area/ship/module/maintenance/hallway
	name = "\improper Maintenance Corridors"

/area/ship/module/maintenance/lower
	name = "\improper Lower Deck Maintenance Compartments"
	icon_state = "sub_maint_aft"
	flags = AREA_RAD_SHIELDED

/area/ship/module/maintenance/storage
	name = "\improper Tools Storage"
	icon_state = "engineering_storage"

/area/ship/module/maintenance/techstorage
	name = "\improper Parts Storage"
	icon_state = "engineering_supply"

/area/ship/module/maintenance/eva
	name = "\improper EVA Storage"
	icon_state = "eva"

/area/ship/module/maintenance/engineering
	name = "\improper Engineering Bay"
	icon_state = "engineering_supply"

/area/ship/module/maintenance/atmos
	name = "\improper Atmospherics Comparment"
	icon_state = "atmos"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambiatm1.ogg')

/area/ship/module/maintenance/power
	name = "\improper Power Compartment"
	icon_state = "engine_smes"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')

/area/ship/module/maintenance/engine
	icon_state = "engine"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')

/area/ship/module/maintenance/engine/aft
	name = "\improper Main Engine Bay"

/area/ship/module/maintenance/engine/port
	name = "\improper Port Thruster"

/area/ship/module/maintenance/engine/starboard
	name = "\improper Starboard Thruster"

/area/ship/module/command/hallway
	name = "\improper Command Deck"
	icon_state = "centcom"

/area/ship/module/command/bridge
	name = "\improper Bridge"
	icon_state = "bridge"

/area/ship/module/command/captain
	name = "\improper Captain's Quarters"
	icon_state = "captain"

/area/ship/module/comms
	name = "\improper Communications Relay"
	icon_state = "tcomsatcham"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/signal.ogg','sound/ambience/sonar.ogg')

//shuttles

/area/ship/module/shuttle/outgoing
  name = "\improper Exploration Shuttle"
  icon_state = "tcomsatcham"

/area/shuttle/pirat
  name = "\improper Pirats Shuttle"
  icon_state = "shuttlered"

/area/shuttle/another
  name = "\improper Unknown Shuttle"
  icon_state = "green"

/area/ship/module/shuttle/lift
  name = "\improper Cargo Lift"
  icon_state = "shuttle3"
  base_turf = /turf/simulated/open

*/

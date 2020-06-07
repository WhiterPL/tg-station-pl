/*

### This file contains a list of all the areas in your station. Format is as follows:

/area/CATEGORY/OR/DESCRIPTOR/NAME 	(you can make as many subdivisions as you want)
	name = "NICE NAME" 				(not required but makes things really nice)
	icon = 'ICON FILENAME' 			(defaults to 'icons/turf/areas.dmi')
	icon_state = "NAME OF ICON" 	(defaults to "unknown" (blank))
	requires_power = FALSE 				(defaults to true)
	ambientsounds = list()				(defaults to GENERIC from sound.dm. override it as "ambientsounds = list('sound/ambience/signal.ogg')" or using another define.

NOTE: there are two lists of areas in the end of this file: centcom and station itself. Please maintain these lists valid. --rastaf0

*/


/*-----------------------------------------------------------------------------*/

/area/ai_monitored	//stub defined ai_monitored.dm

/area/ai_monitored/turret_protected

/area/space
	icon_state = "space"
	requires_power = TRUE
	always_unpowered = TRUE
	dynamic_lighting = DYNAMIC_LIGHTING_DISABLED
	power_light = FALSE
	power_equip = FALSE
	power_environ = FALSE
	valid_territory = FALSE
	outdoors = TRUE
	ambientsounds = SPACE
	blob_allowed = FALSE //Eating up space doesn't count for victory as a blob.
	flags_1 = CAN_BE_DIRTY_1

/area/space/nearstation
	icon_state = "space_near"
	dynamic_lighting = DYNAMIC_LIGHTING_IFSTARLIGHT

/area/start
	name = "start area"
	icon_state = "start"
	requires_power = FALSE
	dynamic_lighting = DYNAMIC_LIGHTING_DISABLED
	has_gravity = STANDARD_GRAVITY


/area/testroom
	requires_power = FALSE
	name = "Test Room"
	icon_state = "storage"

//EXTRA

/area/asteroid
	name = "Asteroida"
	icon_state = "asteroid"
	requires_power = FALSE
	has_gravity = STANDARD_GRAVITY
	blob_allowed = FALSE //Nope, no winning on the asteroid as a blob. Gotta eat the station.
	valid_territory = FALSE
	ambientsounds = MINING
	flags_1 = CAN_BE_DIRTY_1

/area/asteroid/nearstation
	dynamic_lighting = DYNAMIC_LIGHTING_FORCED
	ambientsounds = RUINS
	always_unpowered = FALSE
	requires_power = TRUE
	blob_allowed = TRUE

/area/asteroid/nearstation/bomb_site
	name = "Asteroida do testowania bomb"

//STATION13

//Maintenance

/area/maintenance
	ambientsounds = MAINTENANCE
	valid_territory = FALSE


//Departments

/area/maintenance/department/chapel
	name = "Tunel Techniczny przy Kaplicy"
	icon_state = "maint_chapel"

/area/maintenance/department/chapel/monastery
	name = "Tunel Techniczny przy Klasztorze"
	icon_state = "maint_monastery"

/area/maintenance/department/crew_quarters/bar
	name = "Tunel Techniczny przy Barze"
	icon_state = "maint_bar"

/area/maintenance/department/crew_quarters/dorms
	name = "Tunel Techniczny przy Sali Sypialnej"
	icon_state = "maint_dorms"

/area/maintenance/department/eva
	name = "Tunel Techniczny przy EVA"
	icon_state = "maint_eva"

/area/maintenance/department/electrical
	name = "Tunel Techniczny przy sekcji Energetycznej"
	icon_state = "maint_electrical"

/area/maintenance/department/engine/atmos
	name = "Tunel Techniczny przy sekcji Atmosferycznej"
	icon_state = "maint_atmos"

/area/maintenance/department/security
	name = "Tunel Techniczny przy sekcji Ochrony"
	icon_state = "maint_sec"

/area/maintenance/department/security/upper
	name = "Górny Tunel Techniczny przy sekcji Ochrony"

/area/maintenance/department/security/brig
	name = "Tunel Techniczny przy Brygu"
	icon_state = "maint_brig"

/area/maintenance/department/medical
	name = "Tunel Techniczny przy sekcji Medycznej"
	icon_state = "medbay_maint"

/area/maintenance/department/medical/central
	name = "Centralny Tunel Techniczny przy sekcji Medycznej"
	icon_state = "medbay_maint_central"

/area/maintenance/department/medical/morgue
	name = "Tunel Techniczny przy Kostnicy"
	icon_state = "morgue_maint"

/area/maintenance/department/science
	name = "Tunel Techniczny przy sekcji Naukowej"
	icon_state = "maint_sci"

/area/maintenance/department/science/central
	name = "Centralny Tunel Techniczny przy sekcji Naukowej"
	icon_state = "maint_sci_central"

/area/maintenance/department/cargo
	name = "Tunel Techniczny przy Ładowni"
	icon_state = "maint_cargo"

/area/maintenance/department/bridge
	name = "Tunel Techniczny przy Mostku"
	icon_state = "maint_bridge"

/area/maintenance/department/engine
	name = "Tunel Techniczny przy sekcji Inżynieryjnej"
	icon_state = "maint_engi"

/area/maintenance/department/science/xenobiology
	name = "Tunel Techniczny przy sekcji Ksenobiologii"
	icon_state = "xenomaint"
	xenobiology_compatible = TRUE


//Maintenance - Generic

/area/maintenance/aft
	name = "Tunel Techniczny na Rufie"
	icon_state = "amaint"

/area/maintenance/aft/upper
	name = "Górny Tunel Techniczny na Rufie"

/area/maintenance/aft/secondary
	name = "Tunel Techniczny na Rufie"
	icon_state = "amaint_2"

/area/maintenance/central
	name = "Centralny Tunel Techniczny"
	icon_state = "maintcentral"

/area/maintenance/central/secondary
	name = "Centralny Tunel Techniczny"
	icon_state = "maintcentral"

/area/maintenance/fore
	name = "Tunel Techniczny na Dziobie"
	icon_state = "fmaint"

/area/maintenance/fore/upper
	name = "Górny Tunel Techniczny na Dziobie"

/area/maintenance/fore/secondary
	name = "Tunel Techniczny na Dziobie"
	icon_state = "fmaint_2"

/area/maintenance/starboard
	name = "Tunel Techniczny na Sterburcie"
	icon_state = "smaint"

/area/maintenance/starboard/upper
	name = "Górny Tunel Techniczny na Sterburcie"

/area/maintenance/starboard/central
	name = "Centralny Tunel Techniczny na Sterburcie"
	icon_state = "smaint"

/area/maintenance/starboard/secondary
	name = "Drugorzędny Tunel Techniczny na Sterburcie"
	icon_state = "smaint_2"

/area/maintenance/starboard/aft
	name = "Dolny Tunel Techniczny na Sterburcie"
	icon_state = "asmaint"

/area/maintenance/starboard/aft/secondary
	name = "Drugorzędny Dolny Tunel Techniczny na Sterburcie"
	icon_state = "asmaint_2"

/area/maintenance/starboard/fore
	name = "Przedni Tunel Techniczny na Sterburcie"
	icon_state = "fsmaint"

/area/maintenance/port
	name = "Tunel Techniczny na Bakburcie"
	icon_state = "pmaint"

/area/maintenance/port/central
	name = "Centralny Tunel Techniczny na Bakburcie"
	icon_state = "maintcentral"

/area/maintenance/port/aft
	name = "Górny Tunel Techniczny na Bakburcie"
	icon_state = "apmaint"

/area/maintenance/port/fore
	name = "Dolny Tunel Techniczny na Bakburcie"
	icon_state = "fpmaint"

/area/maintenance/disposal
	name = "Utylizacja Odpadów"
	icon_state = "disposal"

/area/maintenance/disposal/incinerator
	name = "Piec do Spopielania"
	icon_state = "incinerator"


//Hallway

/area/hallway/primary/aft
	name = "Dolny Główny Korytarz"
	icon_state = "hallA"

/area/hallway/primary/fore
	name = "Górny Główny Koryatrz"
	icon_state = "hallF"

/area/hallway/primary/starboard
	name = "Główny Korytarz na Sterburcie"
	icon_state = "hallS"

/area/hallway/primary/port
	name = "Główny Korytarz na Bakburcie"
	icon_state = "hallP"

/area/hallway/primary/central
	name = "Centralny Główny Korytarz"
	icon_state = "hallC"

/area/hallway/primary/upper
	name = "Górny Centralny Główny Korytarz"
	icon_state = "hallC"


/area/hallway/secondary/command
	name = "Korytarz przy Dowództwie"
	icon_state = "bridge_hallway"

/area/hallway/secondary/construction
	name = "Strefa Budowlana"
	icon_state = "construction"

/area/hallway/secondary/exit
	name = "Korytarz przy Promie Ratunkowym"
	icon_state = "escape"

/area/hallway/secondary/exit/departure_lounge
	name = "Hala Odlotów"
	icon_state = "escape_lounge"

/area/hallway/secondary/entry
	name = "Korytarz przy Hali Przylotów"
	icon_state = "entry"

/area/hallway/secondary/service
	name = "Korytarz przy Usługach"
	icon_state = "hall_service"

//Command

/area/bridge
	name = "Mostek"
	icon_state = "bridge"
	ambientsounds = list('sound/ambience/signal.ogg')

/area/bridge/meeting_room
	name = "Sala Konferencyjna Dyrektorów Departamentów"
	icon_state = "meeting"

/area/bridge/meeting_room/council
	name = "Izba Rady"
	icon_state = "meeting"

/area/bridge/showroom/corporate
	name = "Sala Prezentacyjna"
	icon_state = "showroom"

/area/crew_quarters/heads/captain
	name = "Biuro Kapitana"
	icon_state = "captain"

/area/crew_quarters/heads/captain/private
	name = "Kwatera Kapitana"
	icon_state = "captain_private"

/area/crew_quarters/heads/chief
	name = "Biuro Majstra"
	icon_state = "ce_office"

/area/crew_quarters/heads/cmo
	name = "Biuro Ordynatora"
	icon_state = "cmo_office"

/area/crew_quarters/heads/hop
	name = "Biuro Głowy Personelu"
	icon_state = "hop_office"

/area/crew_quarters/heads/hos
	name = "Biuro Głowy Ochrony"
	icon_state = "hos_office"

/area/crew_quarters/heads/hor
	name = "Biuro Dyrektora Naukowego"
	icon_state = "rd_office"

/area/comms
	name = "Radiowęzeł"
	icon_state = "tcomsatcham"

/area/server
	name = "Serwerownia Wiadmości"
	icon_state = "server"

//Crew

/area/crew_quarters/dorms
	name = "Sala Sypialna"
	icon_state = "dorms"
	safe = TRUE

/area/crew_quarters/dorms/barracks
	name = "Sypialnie"

/area/crew_quarters/dorms/barracks/male
	name = "Męskie Sypialnie"
	icon_state = "dorms_male"

/area/crew_quarters/dorms/barracks/female
	name = "Damskie Sypialnie"
	icon_state = "dorms_female"

/area/crew_quarters/toilet
	name = "Toaleta Sali Sypialnej"
	icon_state = "toilet"

/area/crew_quarters/toilet/auxiliary
	name = "Dodatkowa Toaleta"
	icon_state = "toilet"

/area/crew_quarters/toilet/locker
	name = "Toaleta Szatni"
	icon_state = "toilet"

/area/crew_quarters/toilet/restrooms
	name = "Toalety"
	icon_state = "toilet"

/area/crew_quarters/locker
	name = "Szatnia"
	icon_state = "locker"

/area/crew_quarters/lounge
	name = "Hol"
	icon_state = "lounge"

/area/crew_quarters/fitness
	name = "Siłownia"
	icon_state = "fitness"

/area/crew_quarters/fitness/locker_room
	name = "Szatnia Dzielona"
	icon_state = "locker"

/area/crew_quarters/fitness/locker_room/male
	name = "Męska Szatnia"
	icon_state = "locker_male"

/area/crew_quarters/fitness/locker_room/female
	name = "Damska Szatnia"
	icon_state = "locker_female"


/area/crew_quarters/fitness/recreation
	name = "Strefa Wypoczynkowa"
	icon_state = "rec"

/area/crew_quarters/cafeteria
	name = "Kafeteria"
	icon_state = "cafeteria"

/area/crew_quarters/kitchen
	name = "Kuchnia"
	icon_state = "kitchen"

/area/crew_quarters/kitchen/coldroom
	name = "Chłodnia Kuchni"
	icon_state = "kitchen_cold"

/area/crew_quarters/bar
	name = "Bar"
	icon_state = "bar"
	mood_bonus = 5
	mood_message = "<span class='nicegreen'>Kocham przesiadywać w barze!\n</span>"

/area/crew_quarters/bar/atrium
	name = "Atrium"
	icon_state = "bar"

/area/crew_quarters/electronic_marketing_den
	name = "Market części Elektronicznych"
	icon_state = "abandoned_m_den"

/area/crew_quarters/abandoned_gambling_den
	name = "Opuszczona Szulernia"
	icon_state = "abandoned_g_den"

/area/crew_quarters/abandoned_gambling_den/secondary
	icon_state = "abandoned_g_den_2"

/area/crew_quarters/theatre
	name = "Teatr"
	icon_state = "theatre"

/area/crew_quarters/theatre/abandoned
	name = "Opuszczony Teatr"
	icon_state = "abandoned_theatre"

/area/library
	name = "Biblioteka"
	icon_state = "library"
	flags_1 = CULT_PERMITTED_1

/area/library/lounge
	name = "Hol Biblioteki"
	icon_state = "library_lounge"

/area/library/artgallery
	name = "Galeria Sztuki"
	icon_state = "library_gallery"

/area/library/private
	name = "Czytelnia Biblioteki"
	icon_state = "library_gallery_private"

/area/library/upper
	name = "Górne Piętro Biblioteki"
	icon_state = "library"

/area/library/printer
	name = "Drukarnia Biblioteki"
	icon_state = "library"

/area/library/abandoned
	name = "Opuszczona Biblioteka"
	icon_state = "abandoned_library"
	flags_1 = CULT_PERMITTED_1

/area/chapel
	icon_state = "chapel"
	ambientsounds = HOLY
	flags_1 = NONE

/area/chapel/main
	name = "Kaplica"

/area/chapel/main/monastery
	name = "Klasztor"

/area/chapel/office
	name = "Biuro Kapelana"
	icon_state = "chapeloffice"

/area/chapel/asteroid
	name = "Kaplica Asterioidy"
	icon_state = "explored"

/area/chapel/asteroid/monastery
	name = "Klasztor Asteroidy"

/area/chapel/dock
	name = "Dok Kaplicy"
	icon_state = "construction"

/area/lawoffice
	name = "Biuro Prawnicze"
	icon_state = "law"


//Engineering

/area/engine
	ambientsounds = ENGINEERING

/area/engine/engine_smes
	name = "SMES sekcji Inżynieryjnej"
	icon_state = "engine_smes"

/area/engine/engineering
	name = "sekcja Inżynieryjna"
	icon_state = "engine"

/area/engine/atmos
	name = "sekcja Atmosferyczna"
	icon_state = "atmos"
	flags_1 = CULT_PERMITTED_1

/area/engine/atmos/upper
	name = "Górna sekcja Atmosferyczna"

/area/engine/atmospherics_engine
	name = "Silnik sekcji Atmosferycznej"
	icon_state = "atmos_engine"
	valid_territory = FALSE

/area/engine/engine_room //donut station specific
	name = "Maszynownia"
	icon_state = "atmos_engine"

/area/engine/lobby
	name = "Hol sekcji Inżynieryjnej"
	icon_state = "engi_lobby"

/area/engine/engine_room/external
	name = "Zewnętrzny Dostęp Supermaterii"
	icon_state = "engine_foyer"

/area/engine/supermatter
	name = "Reaktor Supermaterii"
	icon_state = "engine_sm"
	valid_territory = FALSE

/area/engine/break_room
	name = "Hall sekcji Iżynieryjnej"
	icon_state = "engine_break"

/area/engine/gravity_generator
	name = "Pomieszczenie Generatora Grawitacji"
	icon_state = "grav_gen"

/area/engine/storage
	name = "Magazyn sekcji Inżynieryjnej"
	icon_state = "engi_storage"

/area/engine/storage_shared
	name = "Współdzielony Magazyn sekcji Inżynieryjnej"
	icon_state = "engi_storage"

/area/engine/transit_tube
	name = "Tuba Dostawcza"
	icon_state = "transit_tube"


//Solars

/area/solar
	requires_power = FALSE
	dynamic_lighting = DYNAMIC_LIGHTING_IFSTARLIGHT
	valid_territory = FALSE
	blob_allowed = FALSE
	flags_1 = NONE
	ambientsounds = ENGINEERING

/area/solar/fore
	name = "Górne Panele Słoneczne"
	icon_state = "yellow"

/area/solar/aft
	name = "Dolne Panele Słoneczne"
	icon_state = "yellow"

/area/solar/aux/port
	name = "Górne Dodatkowe Panele Słoneczne na Bakburcie"
	icon_state = "panelsA"

/area/solar/aux/starboard
	name = "Górne Dodatkowe Panele Słoneczne na Sterburcie"
	icon_state = "panelsA"

/area/solar/starboard
	name = "Panele Słoneczne na Sterburcie"
	icon_state = "panelsS"

/area/solar/starboard/aft
	name = "Dolne Panele Słoneczne na Sterburcie"
	icon_state = "panelsAS"

/area/solar/starboard/fore
	name = "Górne Panele Słoneczne na Sterburcie"
	icon_state = "panelsFS"

/area/solar/port
	name = "Panele Słoneczne na Bakburcie"
	icon_state = "panelsP"

/area/solar/port/aft
	name = "Dolne Panele Słoneczne na Bakburcie"
	icon_state = "panelsAP"

/area/solar/port/fore
	name = "Górne Panele Słoneczne na Bakburcie"
	icon_state = "panelsFP"

/area/solar/aisat
	name = "Panele Słoneczne przy satelicie AI"
	icon_state = "yellow"

//Solar Maint

/area/maintenance/solars
	name = "Tunel Techniczny Paneli Słonecznych"
	icon_state = "yellow"

/area/maintenance/solars/port
	name = "Tunel Techniczny Paneli Słonecznych na Bakburcie"
	icon_state = "SolarcontrolP"

/area/maintenance/solars/port/aft
	name = "Dolny Tunel Techniczny Paneli Słonecznych na Bakburcie"
	icon_state = "SolarcontrolAP"

/area/maintenance/solars/port/fore
	name = "Górny Tunel Techniczny Paneli Słonecznych na Bakburcie"
	icon_state = "SolarcontrolFP"

/area/maintenance/solars/starboard
	name = "Tunel Techniczny Paneli Słonecznych na Sterburcie"
	icon_state = "SolarcontrolS"

/area/maintenance/solars/starboard/aft
	name = "Dolny Tunel Techniczny Paneli Słonecznych na Sterburcie"
	icon_state = "SolarcontrolAS"

/area/maintenance/solars/starboard/fore
	name = "Górny Tunel Techniczny Paneli Słonecznych na Sterburcie"
	icon_state = "SolarcontrolFS"

//Teleporter

/area/teleporter
	name = "Pomieszczenie Teleportera"
	icon_state = "teleporter"
	ambientsounds = ENGINEERING

/area/gateway
	name = "Brama"
	icon_state = "gateway"
	ambientsounds = ENGINEERING

//MedBay

/area/medical
	name = "sekcja Medyczna"
	icon_state = "medbay1"
	ambientsounds = MEDICAL

/area/medical/abandoned
	name = "Opuszczona sekcja Medyczna"
	icon_state = "abandoned_medbay"
	ambientsounds = list('sound/ambience/signal.ogg')

/area/medical/medbay/central
	name = "Główna sekcja Medyczna"
	icon_state = "med_central"

/area/medical/medbay/lobby
	name = "Hol sekcji Medycznej"
	icon_state = "med_lobby"

	//Medbay is a large area, these additional areas help level out APC load.

/area/medical/medbay/zone2
	name = "sekcja Medyczna"
	icon_state = "medbay2"

/area/medical/medbay/aft
	name = "Górna sekcja Medyczna"
	icon_state = "med_aft"

/area/medical/storage
	name = "Magazyn sekcji Medycznej"
	icon_state = "med_storage"

/area/medical/paramedic
	name = "Ambulatorium"
	icon_state = "paramedic"

/area/medical/office
	name = "Gabinet Medyczny"
	icon_state = "med_office"

/area/medical/surgery/room_c
	name = "Sala Operacyjna C"
	icon_state = "surgery"

/area/medical/surgery/room_d
	name = "Sala Operacyjna D"
	icon_state = "surgery"

/area/medical/break_room
	name = "Pokój Socjalny sekcji Medycznej"
	icon_state = "med_break"

/area/medical/coldroom
	name = "Chłodnia sekcji Medycznej"
	icon_state = "kitchen_cold"

/area/medical/patients_rooms
	name = "Pokoje Pacjentów"
	icon_state = "patients"

/area/medical/patients_rooms/room_a
	name = "Pokój Pacjenta A"
	icon_state = "patients"

/area/medical/patients_rooms/room_b
	name = "Pokój Pacjenta B"
	icon_state = "patients"

/area/medical/virology
	name = "sekcja Virologii"
	icon_state = "virology"
	flags_1 = CULT_PERMITTED_1

/area/medical/morgue
	name = "Kostnica"
	icon_state = "morgue"
	ambientsounds = SPOOKY

/area/medical/chemistry
	name = "sekcja Chemiczna"
	icon_state = "chem"

/area/medical/pharmacy
	name = "sekcja Farmaceutyczna"
	icon_state = "pharmacy"

/area/medical/surgery
	name = "sekcja Operacyjna"
	icon_state = "surgery"

/area/medical/surgery/room_b
	name = "Sala Operacyjna B"
	icon_state = "surgery"

/area/medical/cryo
	name = "sekcja Kriogeniki"
	icon_state = "cryo"

/area/medical/exam_room
	name = "Pomieszczenie Egzaminacyjne"
	icon_state = "exam_room"

/area/medical/genetics
	name = "Laboratorium Genetyczne"
	icon_state = "genetics"

/area/medical/sleeper
	name = "Sala Medyczna"
	icon_state = "exam_room"

/area/medical/psychology
	name = "Biuro Psychologa"
	icon_state = "psychology"
	mood_bonus = 3
	mood_message = "<span class='nicegreen'>Czuję, że ktoś wreszcie mnie rozumie.\n</span>"
	ambientsounds = list('sound/ambience/aurora_caelus_short.ogg')

//Security

/area/security
	name = "sekcja Ochrony"
	icon_state = "security"
	ambientsounds = HIGHSEC

/area/security/main
	name = "Biuro Ochrony"
	icon_state = "security"

/area/security/brig
	name = "Bryg"
	icon_state = "brig"

/area/security/brig/upper
	name = "Górny Bryg"

/area/security/courtroom
	name = "Sala Sądowa"
	icon_state = "courtroom"

/area/security/prison
	name = "Skrzydło Więzienne"
	icon_state = "sec_prison"

/area/security/prison/toilet //radproof
	name = "Toaleta Więzienia"
	icon_state = "sec_prison_safe"

/area/security/prison/safe //radproof
	name = "Cele Więzienne"
	icon_state = "sec_prison_safe"

/area/security/prison/upper
	name = "Górne Skrzydło Więzienne"
	icon_state = "prison_upper"

/area/security/prison/visit
	name = "Pomieszczenie Odwiedzin"
	icon_state = "prison_visit"

/area/security/prison/rec
	name = "Więzienna Sala Przesłuchań"
	icon_state = "prison_rec"

/area/security/prison/mess
	name = "Hol Więzienny"
	icon_state = "prison_mess"

/area/security/prison/work
	name = "Warsztat Więzienny"
	icon_state = "prison_work"

/area/security/prison/shower
	name = "Prysznic Więzienny"
	icon_state = "prison_shower"

/area/security/prison/workout
	name = "Siłownia Więzienna"
	icon_state = "prison_workout"

/area/security/prison/garden
	name = "Ogród Więzienny"
	icon_state = "prison_garden"

/area/security/processing
	name = "Prom do Kolonii Karnej"
	icon_state = "sec_processing"

/area/security/processing/cremation
	name = "Krematorium sekcji Ochrony"
	icon_state = "sec_cremation"

/area/security/warden
	name = "Dowództwo Brygu"
	icon_state = "warden"

/area/security/detectives_office
	name = "Biuro Detektywa"
	icon_state = "detective"
	ambientsounds = list('sound/ambience/ambidet1.ogg','sound/ambience/ambidet2.ogg')

/area/security/detectives_office/private_investigators_office
	name = "Biuro Prywatnego Detektywa"
	icon_state = "investigate_office"

/area/security/range
	name = "Strzelnica"
	icon_state = "firingrange"

/area/security/execution
	icon_state = "execution_room"

/area/security/execution/transfer
	name = "Centrum Transferowe"
	icon_state = "sec_processing"

/area/security/execution/education
	name = "Sala Edukacji Więźniów"

/area/security/nuke_storage
	name = "Skarbiec"
	icon_state = "nuke_storage"

/area/ai_monitored/nuke_storage
	name = "Skarbiec"
	icon_state = "nuke_storage"

/area/security/checkpoint
	name = "Punkt Kontrolny Ochrony"
	icon_state = "checkpoint1"

/area/security/checkpoint/auxiliary
	icon_state = "checkpoint_aux"

/area/security/checkpoint/escape
	icon_state = "checkpoint_esc"

/area/security/checkpoint/supply
	name = "Posterunek Ochrony - Ładownia"
	icon_state = "checkpoint_supp"

/area/security/checkpoint/engineering
	name = "Posterunek Ochrony - sekcja Inżynieryjna"
	icon_state = "checkpoint_engi"

/area/security/checkpoint/medical
	name = "Posterunek Ochrony - sekcja Medyczna"
	icon_state = "checkpoint_med"

/area/security/checkpoint/science
	name = "Posterunek Ochrony - sekcja Naukowa"
	icon_state = "checkpoint_sci"

/area/security/checkpoint/science/research
	name = "Posterunek Ochrony - Dywizja Naukowa"
	icon_state = "checkpoint_res"

/area/security/checkpoint/customs
	name = "Urząd Celny"
	icon_state = "customs_point"

/area/security/checkpoint/customs/auxiliary
	icon_state = "customs_point_aux"


//Service

/area/quartermaster
	name = "Kwatermistrza"
	icon_state = "quart"

/area/quartermaster/sorting
	name = "Biuro Pocztowe"
	icon_state = "cargo_delivery"

/area/quartermaster/warehouse
	name = "Magazyn"
	icon_state = "cargo_warehouse"

/area/quartermaster/warehouse/upper
	name = "Górny Magazyn"

/area/quartermaster/office
	name = "Biuro Ładowni"
	icon_state = "cargo_office"

/area/quartermaster/storage
	name = "Strefa Załadunku"
	icon_state = "cargo_bay"

/area/quartermaster/qm
	name = "Biuro Kwatermistrza"
	icon_state = "quart_office"

/area/quartermaster/qm/perch
	name = "Quartermaster's Perch"
	icon_state = "quart_perch"

/area/quartermaster/miningdock
	name = "Dok Górniczy"
	icon_state = "mining"

/area/quartermaster/miningoffice
	name = "Biuro Górnicze"
	icon_state = "mining"

/area/janitor
	name = "Schowek Sprzątacza"
	icon_state = "janitor"
	flags_1 = CULT_PERMITTED_1

/area/hydroponics
	name = "Hydroponika"
	icon_state = "hydro"

/area/hydroponics/upper
	name = "Górna Hydroponika"
	icon_state = "hydro"

/area/hydroponics/garden
	name = "Ogród"
	icon_state = "garden"

/area/hydroponics/garden/abandoned
	name = "Opuszczony Ogród"
	icon_state = "abandoned_garden"

/area/hydroponics/garden/monastery
	name = "Ogród Klasztoru"
	icon_state = "hydro"


//Science

/area/science
	name = "sekcja Naukowa"
	icon_state = "science"

/area/science/lab
	name = "sekcja Badań i Rozwoju"
	icon_state = "research"

/area/science/xenobiology
	name = "Laboratorium Ksenobiologiczne"
	icon_state = "xenobio"

/area/science/storage
	name = "Przechowalnia Toksyn"
	icon_state = "tox_storage"

/area/science/test_area
	valid_territory = FALSE
	name = "Obszar Testowania Toksyn"
	icon_state = "tox_test"

/area/science/mixing
	name = "Laboratorium Fuzji Toksyn"
	icon_state = "tox_mix"

/area/science/mixing/chamber
	name = "Komora Fuzji Toksyn"
	icon_state = "tox_mix_chamber"
	valid_territory = FALSE

/area/science/genetics
	name = "Laboratorium Genetyczne"
	icon_state = "geneticssci"

/area/science/misc_lab
	name = "Laboratorium Testowe"
	icon_state = "tox_misc"

/area/science/misc_lab/range
	name = "Obszar Testowania Wynalazków"
	icon_state = "tox_range"

/area/science/server
	name = "Serwerownia sekcji Naukowej"
	icon_state = "server"

/area/science/explab
	name = "Laboratorium Eksperymentalne"
	icon_state = "exp_lab"

/area/science/robotics
	name = "sekcji Robotyki"
	icon_state = "robotics"

/area/science/robotics/mechbay
	name = "Zatoka Mechów"
	icon_state = "mechbay"

/area/science/robotics/lab
	name = "Laboratorium Robotyczne"
	icon_state = "ass_line"

/area/science/research
	name = "sekcja Badawcza"
	icon_state = "science"

/area/science/research/abandoned
	name = "Opuszczone Laboratorium Badawcze"
	icon_state = "abandoned_sci"

/area/science/nanite
	name = "Laboratorium Nanitowe"
	icon_state = "nanite"

//Storage

/area/storage/tools
	name = "Dodatkowy Skład Narzędziowy"
	icon_state = "tool_storage"

/area/storage/primary
	name = "Główny Skład Narzędziowy"
	icon_state = "primary_storage"

/area/storage/art
	name = "Skład Przyborów Plastycznych"
	icon_state = "art_storage"

/area/storage/tcom
	name = "Skład urządzeń Telekomunikacyjnych"
	icon_state = "tcom"
	valid_territory = FALSE

/area/storage/eva
	name = "Skład EVA"
	icon_state = "eva"

/area/storage/emergency/starboard
	name = "Skład Ratunkowy na Sterburcie"
	icon_state = "emergency_storage"

/area/storage/emergency/port
	name = "Skład Ratunkowy na Bakburcie"
	icon_state = "emergency_storage"

/area/storage/tech
	name = "Skład Techniczny"
	icon_state = "aux_storage"

/area/storage/mining
	name = "Publiczny Skład Górniczy"
	icon_state = "mining"

//Construction

/area/construction
	name = "Strefa Budowlana"
	icon_state = "construction"
	ambientsounds = ENGINEERING

/area/construction/mining/aux_base
	name = "Budowa Dodaykowej Bazy"
	icon_state = "aux_base_construction"

/area/construction/storage_wing
	name = "Skrzydło Magazynowe"
	icon_state = "storage_wing"

// Vacant Rooms
/area/vacant_room
	name = "Wolne Pomieszczenie"
	icon_state = "vacant_room"
	ambientsounds = MAINTENANCE

/area/vacant_room/office
	name = "Wolne Biuro"
	icon_state = "vacant_office"

/area/vacant_room/commissary
	name = "Wolna Kantyna"
	icon_state = "vacant_commissary"

//AI

/area/ai_monitored/security/armory
	name = "Zbrojownia"
	icon_state = "armory"
	ambientsounds = HIGHSEC

/area/ai_monitored/security/armory/upper
	name = "Górna Zbrojownia"

/area/ai_monitored/storage/eva
	name = "Skład EVA"
	icon_state = "eva"
	ambientsounds = HIGHSEC

/area/ai_monitored/storage/eva/upper
	name = "Górny Skład EVA"

/area/ai_monitored/storage/satellite
	name = "Tunel Techniczny Satelity AI"
	icon_state = "ai_storage"
	ambientsounds = HIGHSEC

	//Turret_protected

/area/ai_monitored/turret_protected
	ambientsounds = list('sound/ambience/ambimalf.ogg', 'sound/ambience/ambitech.ogg', 'sound/ambience/ambitech2.ogg', 'sound/ambience/ambiatmos.ogg', 'sound/ambience/ambiatmos2.ogg')

/area/ai_monitored/turret_protected/ai_upload
	name = "Komora Zgrywania AI"
	icon_state = "ai_upload"

/area/ai_monitored/turret_protected/ai_upload_foyer
	name = "Śluza Komory Zgrywania AI"
	icon_state = "ai_upload_foyer"

/area/ai_monitored/turret_protected/ai
	name = "Komora AI"
	icon_state = "ai_chamber"

/area/ai_monitored/turret_protected/aisat
	name = "Satelita AI"
	icon_state = "ai"

/area/ai_monitored/turret_protected/aisat/atmos
	name = "sekcja Atmosferyczna Satelity AI"
	icon_state = "ai"

/area/ai_monitored/turret_protected/aisat/foyer
	name = "Hol Satelity AI"
	icon_state = "ai_foyer"

/area/ai_monitored/turret_protected/aisat/service
	name = "Usługi Satelity AI"
	icon_state = "ai"

/area/ai_monitored/turret_protected/aisat/hallway
	name = "Korytarz Satelity AI"
	icon_state = "ai"

/area/aisat
	name = "Powłoka Satelity AI"
	icon_state = "ai"

/area/ai_monitored/turret_protected/aisat_interior
	name = "Wejście do Satelity AI"
	icon_state = "ai_interior"

/area/ai_monitored/turret_protected/AIsatextAS
	name = "Wyjście z Satelity AI"
	icon_state = "ai_sat_east"

/area/ai_monitored/turret_protected/AIsatextAP
	name = "Wyjście z Satelity AI"
	icon_state = "ai_sat_west"


// Telecommunications Satellite

/area/tcommsat
	ambientsounds = list('sound/ambience/ambisin2.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/ambigen10.ogg', 'sound/ambience/ambitech.ogg',\
											'sound/ambience/ambitech2.ogg', 'sound/ambience/ambitech3.ogg', 'sound/ambience/ambimystery.ogg')

/area/tcommsat/computer
	name = "Pomieszczenie Kontrolne Telekomunikacji"
	icon_state = "tcomsatcomp"

/area/tcommsat/server
	name = "Serwerownia Telekomunikacji"
	icon_state = "tcomsatcham"

/area/tcommsat/server/upper
	name = "Górna Serwerownia Telekomunikacji"

//External Hull Access
/area/maintenance/external
	name = "Śluza do Zewnętrznej Powłoki"
	icon_state = "amaint"

/area/maintenance/external/aft
	name = "Dolna Śluza do Zewnętrznej Powłoki"

/area/maintenance/external/port
	name = "Śluza do Zewnętrznej Powłoki na Bakburcie"

/area/maintenance/external/port/bow
	name = "Górna Śluza do Zewnętrznej Powłoki na Bakburcie"

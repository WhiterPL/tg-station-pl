/datum/round_event_control/mice_migration
	name = "Mice Migration"
	typepath = /datum/round_event/mice_migration
	weight = 10

/datum/round_event/mice_migration
	var/minimum_mice = 5
	var/maximum_mice = 15

/datum/round_event/mice_migration/announce(fake)
	var/cause = pick("zimę", "cięcia budżetowe", "Popiela",
		"zimny kosmos", "\[ZMIENIONO\]", "zmiany klimatu",
		"pech")
	var/plural = pick("trochę", "horda", "zgraja", "rój",
		"wiele", "nie więcej niż [maximum_mice]")
	var/name = pick("gryzoni", "myszy", "piszczałek",
		"ssaków żywiących się kablami", "\[ZMIENIONO\]", "pasożytów żywiących się energią")
	var/movement = pick("emigrowało", "przybyło", "wtargnęło", "weszło")
	var/location = pick("tunelów technicznych", "zakrystii",
		"\[ZMIENIONO\]", "jadłodajni")

	priority_announce("Przez [cause], [plural] [name] [movement] \
		do [location].", "Migracja",
		'sound/effects/mousesqueek.ogg')

/datum/round_event/mice_migration/start()
	SSminor_mapping.trigger_migration(rand(minimum_mice, maximum_mice))

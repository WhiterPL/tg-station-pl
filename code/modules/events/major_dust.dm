/datum/round_event_control/meteor_wave/major_dust
	name = "Major Space Dust"
	typepath = /datum/round_event/meteor_wave/major_dust
	weight = 8

/datum/round_event/meteor_wave/major_dust
	wave_name = "space dust"

/datum/round_event/meteor_wave/major_dust/announce(fake)
	var/reason = pick(
		"Stacja znalazła się w strefie mgławicy gruzu, możliwe są uszkodzenia \
		zewnętrznej struktury.",
		"Wydział superbroni Nanotrasen właśnie testuję \
		[pick("niszczycielski","gigantyczny","zabójczy","radioaktywny","absurdalnych rozmiarów")] \
		[pick("sprej na komary","laser","czołg","krążownik","\[REDACTED\]")], \
		w stację uderzyć może część odłamków.",
		"Sąsiednia stacja rzuca w was kamieniami. (Możliwe że \
		mają dość waszej obecności.)")
	priority_announce(pick(reason), "Kolizja")

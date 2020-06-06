/datum/round_event_control/meteor_wave/meaty
	name = "Meteor Wave: Meaty"
	typepath = /datum/round_event/meteor_wave/meaty
	weight = 2
	max_occurrences = 1

/datum/round_event/meteor_wave/meaty
	wave_name = "meaty"

/datum/round_event/meteor_wave/meaty/announce(fake)
	priority_announce("Wykryto kawałki mięsa na kursie kolizyjnym ze stacją.", "Uh oh",'sound/ai/meteors.ogg')

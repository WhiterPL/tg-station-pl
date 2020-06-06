/datum/round_event_control/communications_blackout
	name = "Communications Blackout"
	typepath = /datum/round_event/communications_blackout
	weight = 30

/datum/round_event/communications_blackout
	announceWhen	= 1

/datum/round_event/communications_blackout/announce(fake)
	var/alert = pick(	"Wykryto jonosferyczne anomalie w zasięgu stacji. Wystąpi tymczasowy błąd w serwerach telekomunikacji. Po więcej informacji skontaktuj się z*%fj00)`5vc-BZZT", \
						"Wykryto jonosferyczne anomalie w zasięgu stacji. Wystąpi tymczasowy błąd w serwerach telekomunikacji. Po więcej inf*3mga;b4;'1v¬-BZZZT", \
						"Wykryto jonosferyczne anomalie w zasięgu stacji. Wystąpi tymczasowy błąd w serwerach telekomu#MCi46:5.;@63-BZZZZT", \
						"Wykryto jonosferyczne anomalie w zasięgu stacji. Wystąpi tymczasowy bł'fZ\\kg5_0-BZZZZZT", \
						"Wykryto jonosferyczne anoma:%£ MCayj^j<.3-BZZZZZZT", \
						"#4nd%;f4y6,>£%-BZZZZZZZT")

	for(var/mob/living/silicon/ai/A in GLOB.ai_list)	//AIs are always aware of communication blackouts.
		to_chat(A, "<br><span class='warning'><b>[alert]</b></span><br>")

	if(prob(30) || fake)	//most of the time, we don't want an announcement, so as to allow AIs to fake blackouts.
		priority_announce(alert)


/datum/round_event/communications_blackout/start()
	for(var/obj/machinery/telecomms/T in GLOB.telecomms_list)
		T.emp_act(EMP_HEAVY)

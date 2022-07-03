extends Node2D

func init():
	Fmod.set_software_format(0, Fmod.FMOD_SPEAKERMODE_STEREO, 0)
	Fmod.init(1024, Fmod.FMOD_STUDIO_INIT_LIVEUPDATE, Fmod.FMOD_INIT_NORMAL)
	Fmod.set_sound_3D_settings(1.0, 64.0, 1.0)
	
	# Load Banks
	Fmod.load_bank("res://coin_dash/Build/Desktop/Master.strings.bank", Fmod.FMOD_STUDIO_LOAD_BANK_NORMAL)
	Fmod.load_bank("res://coin_dash/Build/Desktop/Master.bank", Fmod.FMOD_STUDIO_LOAD_BANK_NORMAL)

	# Register Listener
	Fmod.add_listener(0, self)

func play(sound: String, params):
	match sound:
		'coin':
			Fmod.play_one_shot_with_params("event:/coin", self, params)
		_:
			pass

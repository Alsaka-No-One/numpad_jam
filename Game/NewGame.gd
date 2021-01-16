extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	if ($Timer.is_stopped()):
		if (Input.is_action_just_released("input_0")):
			$halo_0.visible = true
			$Timer.start(0.5)
		elif (Input.is_action_just_released("input_1")):
			$halo_1.visible = true
			$Timer.start(0.5)
		elif (Input.is_action_just_released("input_2")):
			$halo_2.visible = true
			$Timer.start(0.5)
		elif (Input.is_action_just_released("input_3")):
			$halo_3.visible = true
			$Timer.start(0.5)
		elif (Input.is_action_just_released("input_4")):
			$halo_4.visible = true
			$Timer.start(0.5)
		elif (Input.is_action_just_released("input_5")):
			$halo_5.visible = true
			$Timer.start(0.5)
		elif (Input.is_action_just_released("input_6")):
			$halo_6.visible = true
			$Timer.start(0.5)
		elif (Input.is_action_just_released("input_7")):
			$halo_7.visible = true
			$Timer.start(0.5)
		elif (Input.is_action_just_released("input_8")):
			$halo_8.visible = true
			$Timer.start(0.5)
		elif (Input.is_action_just_released("input_9")):
			$halo_9.visible = true
			$Timer.start(0.5)
#	var switcher = {
#		0 : "January",
#		1 : "February"
#	}
#	print(switcher.get(, "fail"))


func _on_Timer_timeout():
	$halo_0.visible = false
	$halo_1.visible = false
	$halo_2.visible = false
	$halo_3.visible = false
	$halo_4.visible = false
	$halo_5.visible = false
	$halo_6.visible = false
	$halo_7.visible = false
	$halo_8.visible = false
	$halo_9.visible = false

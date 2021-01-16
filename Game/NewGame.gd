extends Control

var halos

# Called when the node enters the scene tree for the first time.
func _ready():
	halos = [
		$halo_0,
		$halo_1,
		$halo_2,
		$halo_3,
		$halo_4,
		$halo_5,
		$halo_6,
		$halo_7,
		$halo_8,
		$halo_9,
	]
	rng.randomize()
	addNumberToSequence()

var rng = RandomNumberGenerator.new()
var seqNumber = 0
var seq = [
]
func addNumberToSequence():
	seq.append([rng.randi() % 10, 0])
	for num in seq:
		num[1] = 0
	print("---------")
	print(seq)

func showSequence():
	if seq[seqNumber][1] == 0:
		halos[seq[seqNumber][0]].visible = true
		seq[seqNumber][1] += 1
	elif seq[seqNumber][1] == 80:
		halos[seq[seqNumber][0]].visible = false
		seqNumber += 1
		if seqNumber >= len(seq) - 1:
			return true
	else:
		seq[seqNumber][1] += 1
	return false


func _process(_delta):
	if showSequence() == true:
		seqNumber = 0
		rng.randomize()
		addNumberToSequence()
# 	if ($Timer.is_stopped()):
# 		if (Input.is_action_just_released("input_0")):
# 			$halo_0.visible = true
# 			$Timer.start(0.5)
# 		elif (Input.is_action_just_released("input_1")):
# 			$halo_1.visible = true
# 			$Timer.start(0.5)
# 		elif (Input.is_action_just_released("input_2")):
# 			$halo_2.visible = true
# 			$Timer.start(0.5)
# 		elif (Input.is_action_just_released("input_3")):
# 			$halo_3.visible = true
# 			$Timer.start(0.5)
# 		elif (Input.is_action_just_released("input_4")):
# 			$halo_4.visible = true
# 			$Timer.start(0.5)
# 		elif (Input.is_action_just_released("input_5")):
# 			$halo_5.visible = true
# 			$Timer.start(0.5)
# 		elif (Input.is_action_just_released("input_6")):
# 			$halo_6.visible = true
# 			$Timer.start(0.5)
# 		elif (Input.is_action_just_released("input_7")):
# 			$halo_7.visible = true
# 			$Timer.start(0.5)
# 		elif (Input.is_action_just_released("input_8")):
# 			$halo_8.visible = true
# 			$Timer.start(0.5)
# 		elif (Input.is_action_just_released("input_9")):
# 			$halo_9.visible = true
# 			$Timer.start(0.5)


# func _on_Timer_timeout():
# 	$halo_0.visible = false
# 	$halo_1.visible = false
# 	$halo_2.visible = false
# 	$halo_3.visible = false
# 	$halo_4.visible = false
# 	$halo_5.visible = false
# 	$halo_6.visible = false
# 	$halo_7.visible = false
# 	$halo_8.visible = false
# 	$halo_9.visible = false

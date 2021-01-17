extends Control

var halos
var rng = RandomNumberGenerator.new()
var seqNumber = 0
var seq = [
]
var playerTurn = false
var playerPosSeq = 0

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
		if seqNumber >= len(seq):
			playerTurn = true
			return true
	else:
		seq[seqNumber][1] += 1
	return false

func checkPlayerInput(number):
	if seq[playerPosSeq][0] == number:
		playerPosSeq += 1
		if playerPosSeq == len(seq):
			playerTurn = false
			playerPosSeq = 0
			return true
	else:
		for num in seq:
			num[1] = 0
		playerTurn = false
	return false
		

func playerInput():
	if ($Timer.is_stopped()):
		if (Input.is_action_just_released("input_0")):
			$halo_0.visible = true
			$Timer.start(0.5)
			if checkPlayerInput(0) == true:
				return true
		elif (Input.is_action_just_released("input_1")):
			$halo_1.visible = true
			$Timer.start(0.5)
			if checkPlayerInput(1) == true:
				return true
		elif (Input.is_action_just_released("input_2")):
			$halo_2.visible = true
			$Timer.start(0.5)
			if checkPlayerInput(2) == true:
				return true
		elif (Input.is_action_just_released("input_3")):
			$halo_3.visible = true
			$Timer.start(0.5)
			if checkPlayerInput(3) == true:
				return true
		elif (Input.is_action_just_released("input_4")):
			$halo_4.visible = true
			$Timer.start(0.5)
			if checkPlayerInput(4) == true:
				return true
		elif (Input.is_action_just_released("input_5")):
			$halo_5.visible = true
			$Timer.start(0.5)
			if checkPlayerInput(5) == true:
				return true
		elif (Input.is_action_just_released("input_6")):
			$halo_6.visible = true
			$Timer.start(0.5)
			if checkPlayerInput(6) == true:
				return true
		elif (Input.is_action_just_released("input_7")):
			$halo_7.visible = true
			$Timer.start(0.5)
			if checkPlayerInput(7) == true:
				return true
		elif (Input.is_action_just_released("input_8")):
			$halo_8.visible = true
			$Timer.start(0.5)
			if checkPlayerInput(8) == true:
				return true
		elif (Input.is_action_just_released("input_9")):
			$halo_9.visible = true
			$Timer.start(0.5)
			if checkPlayerInput(9) == true:
				return true
	return false

func _process(_delta):
	var isSuccess = false
	if playerTurn == false && $Timer.is_stopped():
		if showSequence() == true:
			seqNumber = 0
	elif playerTurn == true:
		isSuccess = playerInput()
	if isSuccess == true:
		rng.randomize()
		addNumberToSequence()
		isSuccess = false


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

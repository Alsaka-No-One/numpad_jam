extends Node2D

onready var player = get_node("Player")

func _process(delta):
	var pos = player.get_position()
	print(pos)

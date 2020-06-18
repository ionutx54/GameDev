extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var enemy_node = get_tree().get_root().find_node("Enemy", true, false)
	enemy_node.connect("playerSpotted", self, "handlerPlayerSpotted")
	
func handlerPlayerSpotted(p1):
	print("Enemy has spotted me")
	print(p1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

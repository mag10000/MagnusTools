@tool
extends Button

enum {fade,shake,none}
@export var Scene = PackedScene
@export var save = false
@export var transition = none


func _enter_tree():
	pressed.connect(clicked)
	
	
	

func clicked():
	print(name + " changed the scene to: " + Scene)
	get_tree().change_scene_to_file(Scene)

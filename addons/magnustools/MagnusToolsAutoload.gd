extends Node

var saved_scene = "none"
var scene_change_block = false



func change_scene(scene,save : bool):
	if scene_change_block == false:
		if save == true:
			print("Saving New Scene: " + scene)
		get_tree().change_scene_to_file(scene)
	else:
		assert("Scene change Blocked!")

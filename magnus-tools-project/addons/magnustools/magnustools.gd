@tool
extends EditorPlugin


func _enable_plugin():
	# Add autoloads here.
	add_autoload_singleton("MagnusTools", "res://addons/magnustools/MagnusToolsAutoload.gd")


func _disable_plugin():
	# Remove autoloads here.
	remove_autoload_singleton("MagnusTools")


func _enter_tree():
	add_custom_type("Scene Button", "Button", preload("Scene_Button.gd"),preload("Scene_Button_Texture.png"))

func _exit_tree():
	remove_custom_type("Scene Button")

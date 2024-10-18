extends Control



func _on_Play_pressed():
	get_tree().change_scene("res://escenas/Gamse.tscn")


func _on_Options_pressed():
	get_tree().change_scene("res://escenas/Options.tscn")	


func _on_Exit_pressed():
	get_tree().quit()
	

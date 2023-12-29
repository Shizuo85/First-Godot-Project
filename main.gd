extends Node2D


func _ready():
	#Utils.saveGame()
	Utils.loadGame()
func _on_button_pressed():
	get_tree().quit()


func _on_play_pressed():
	get_tree().change_scene_to_file("res://world.tscn")


func _on_new_game_pressed():
	Game.playerHp = 10
	Game.Gold = 0
	Utils.saveGame()
	get_tree().change_scene_to_file("res://world.tscn")

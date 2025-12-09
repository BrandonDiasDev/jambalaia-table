extends Node3D

@onready var novo_jogo: Button = $NovoJogo


func _ready() -> void:
	novo_jogo.pressed.connect(on_pressed)

func on_pressed() -> void:
	GerenciadorCena._abre_cena("res://cenas/game_board.tscn")

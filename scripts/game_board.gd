extends Node

var players_in_table : Array

func _ready() -> void:
	players_in_table = get_players_in_table()
	_init_game()
	
func _init_game() -> void:
	set_players()
	
func set_players() -> void:
	var players_array = GameSettings.get_players()
	
	_name_players_in_table(players_array)
	#_set_inital_wallets(players_array)

func _name_players_in_table(players_array : Array) -> void:
	
	var index = 0
	if players_in_table:
		for name in players_array:
			players_in_table[index].get_node("layout/name").text = name
			index+=1

# set cards()

# set table()

# set big eye ()

# set small eye()

# set dealer()

# start round()


### Sets and Gets

func get_players_in_table() -> Array:
	return get_tree().get_nodes_in_group("player")

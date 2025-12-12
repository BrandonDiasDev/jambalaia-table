extends Node

var players_in_table : Array
var deck : Deck

func _ready() -> void:
	players_in_table = get_players_in_table()
	_init_game()
	
func _init_game() -> void:
	set_players()
	prepare_deck()
	#_set_inital_wallets(players_array)
	_set_initial_cards()

func prepare_deck() -> void:
	deck = Deck.new()
	deck.init()
	deck.shuffle()

func set_players() -> void:
	var players_array = GameSettings.get_players()
	
	_name_players_in_table(players_array)


func _name_players_in_table(players_array : Array) -> void:
	### tem que mudar, tá loucura e virar função de player
	var index = 0
	if players_in_table:
		for name in players_array:
			players_in_table[index].get_node("layout/name").text = name
			index+=1

func _set_initial_cards() -> void:
	_give_cards_to_each_player(2)
	_put_cards_on_table(5)


func _give_cards_to_each_player(num_card : int) -> void:
	for player in players_in_table:
		player.set_cards_in_hand(deck.draw(num_card))

func _put_cards_on_table(num_card: int) -> void:
	print("I put %s cards on the table!" % num_card)

# set cards()
# set table()
# set big eye ()
# set small eye()
# set dealer()
# start round()

### Sets and Gets

func get_players_in_table() -> Array:
	return get_tree().get_nodes_in_group("player")

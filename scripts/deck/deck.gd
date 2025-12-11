class_name Deck
extends Node

var cards : Array
const _DECK_SIZE = 52

func init() -> Array:
	cards = CardsSettings.list_all_config_cards()
	return cards

func shuffle() -> void:
	
	var array_cards := cards #copia o vetor de 4 posições
	var aux_change_position: String
	var count: int = 500
	var random_position_1: int
	var random_position_2: int
	
	for i in count:  
		random_position_1 = randi() % array_cards.size()
		random_position_2 = randi() % array_cards.size()
		
		aux_change_position = array_cards[random_position_1]
		array_cards[random_position_1] = array_cards[random_position_2]
		array_cards[random_position_2] = aux_change_position
		
	print("Array: ", array_cards)
## Sets and Gets

func get_cards() -> Array:
	return cards

	

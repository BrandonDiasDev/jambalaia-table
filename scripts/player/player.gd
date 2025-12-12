class_name Player
extends Control

@onready var label_player_name: RichTextLabel = $layout/name
@onready var hand_cards: Control = $hand_cards
@onready var h_card_hands: HBoxContainer = $hand_cards/H_card_hands

var player_name : String

func _ready() -> void:
	set_player_name()

func drop_hand() -> void:
	for node in h_card_hands.get_children(): 
		node.queue_free()

#sets and gets

func set_cards_in_hand(delt_cards : Array[String]) -> void:
	drop_hand()
	set_cards_nodes(delt_cards)
	
func set_cards_nodes(delt_cards : Array[String]) -> void:
		for card_type in delt_cards: 
			var card_scene = load("res://cenas/card.tscn")
			var card : Card = card_scene.instantiate()
			
			card.init(card_type)
			
			card.set_card_property(card_type)
			#card.
			h_card_hands.add_child(card)
	
func set_player_name() -> void:
	label_player_name.text = player_name

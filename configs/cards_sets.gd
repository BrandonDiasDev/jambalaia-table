class_name CardsSettings
extends Node

const _HEARTS_DECK = {
	"A_H" : null,
	"2_H" : null,
	"3_H" : null,
	"4_H" : null,
	"5_H" : null,
	"6_H" : null,
	"7_H" : null,
	"8_H" : null,
	"9_H" : null,
	"10_H" : null,
	"J_H" : null,
	"Q_H" : null,
	"K_H" : null,
}

const _CUPS_DECK = {
	"A_C" : null,
	"2_C" : null,
	"3_C" : null,
	"4_C" : null,
	"5_C" : null,
	"6_C" : null,
	"7_C" : null,
	"8_C" : null,
	"9_C" : null,
	"10_C" : null,
	"J_C" : null,
	"Q_C" : null,
	"K_C" : null,
}

const _SPADES_DECK = {
	"A_S" : null,
	"2_S" : null,
	"3_S" : null,
	"4_S" : null,
	"5_S" : null,
	"6_S" : null,
	"7_S" : null,
	"8_S" : null,
	"9_S" : null,
	"10_S" : null,
	"J_S" : null,
	"Q_S" : null,
	"K_S" : null,
}

const _DIAMONDS_DECK = {
	"A_D" : null,
	"2_D" : null,
	"3_D" : null,
	"4_D" : null,
	"5_D" : null,
	"6_D" : null,
	"7_D" : null,
	"8_D" : null,
	"9_D" : null,
	"10_D" : null,
	"J_D" : null,
	"Q_D" : null,
	"K_D" : null,
}

static func get_all_config_cards() -> Array:
	var decks : Array
	decks.append(_CUPS_DECK)
	decks.append(_DIAMONDS_DECK)
	decks.append(_HEARTS_DECK)
	decks.append(_SPADES_DECK)
	return decks

static func list_all_config_cards() -> Array:
	var decks : Array
	
	for value in _CUPS_DECK:
		decks.append(value)
		
	for value in _DIAMONDS_DECK:
		decks.append(value)
	
	for value in _HEARTS_DECK:
		decks.append(value)
	
	for value in _SPADES_DECK:
		decks.append(value)
		
	return decks

class_name Card
extends Control

const ASSET_FOLDER : String = "res://assets/imgs/"
@onready var naipe_carta: TextureRect = $naipe_carta

var card_name : String
var asset_path : String


#sets and gets

## Eu to tentando colocar a carta na hand_cards <----- *barulho de mosca*

func init(nome : String, ) -> void:
	card_name = nome

func set_card_property(str_name : String) -> void:
	
	set_naipe(str_name)
	
	print("::DEBUG::")
	print("self: > ", self)
	print("name: > ", self.name)
	print("card_name> ", self.card_name)
	print("asset_path > ", self.asset_path)
	print("naipe_carta > ", self.naipe_carta)
	print(":::::::::")
	

func set_naipe(str_naipe: String) -> bool:
	var dir = DirAccess.open(ASSET_FOLDER)
	if dir:
		var dir_array_files = dir.get_files()
		
		for file in dir_array_files:
			if file.contains(str_naipe) and not file.contains("import"):
				print("Found file naipe: " + file.get_basename())
				print("File: ", file)
				asset_path = file
				var texture: Texture2D = load(ASSET_FOLDER + asset_path)
				
				if naipe_carta:
					naipe_carta.set_texture(texture)
				else:
					push_warning("cards not found. Creating Naipe Rect.")
					var naipe_carta: TextureRect = TextureRect.new()
					naipe_carta.set_texture(texture)
					self.add_child(naipe_carta)
					
				asset_path = file
				return true
					
	else:
		push_error("An error occurred when trying to access the path.")
	
	return false

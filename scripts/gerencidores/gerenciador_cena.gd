extends Node

var cena_atual: Node = null

signal cena_carregada(nova_cena)

func _abre_cena(caminho_da_cena: String, parametros: Dictionary = {}) -> void:
	if cena_atual:
		cena_atual.queue_free()
	
	await get_tree().process_frame # paraece esperar que a cena seja limpa antes de chamar as coisas daqui pra frente
	
	var nova_cena = load(caminho_da_cena).instantiate()
	get_tree().root.call_deferred("add_child", nova_cena)
	cena_atual = nova_cena
	
	if "configurar" in nova_cena:
		nova_cena.configurar(parametros)
	
	call_deferred("_emit_cena_carregada", nova_cena)

func _emit_cena_carregada(nova_cena: Node) -> void:
	print("Emitindo sinal de cena carregada para:", nova_cena.name)
	emit_signal("cena_carregada", nova_cena)

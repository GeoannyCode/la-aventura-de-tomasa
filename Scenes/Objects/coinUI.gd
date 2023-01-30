extends CanvasLayer

func _process(delta):
#	$Label.text = str(get_parent().coins) 
	$Label.text = str(global_var.counter_coins)

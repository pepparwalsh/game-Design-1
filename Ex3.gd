extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_calculate_pressed():
	var eggs = int($LineEdit.text)
	var dozens = floor(eggs / 12)
	var leftover = eggs%12
	var price = 0 
	if dozens>=0 and dozens < 4:
		$lblOut.text = "eggs: %d\ndozens: %d\n" % [eggs, dozens] + "Price is 0.50 "
		price= 0.50
	elif dozens>=0 and dozens < 4:
		$lblOut.text = "eggs: %d\ndozens: %d\n" % [eggs, dozens] + "Price is 0.45 "
		price= 0.45


func _on_clear_pressed():
	$lblOut.text = ""


func _on_exit_pressed():
	get_tree().quit()

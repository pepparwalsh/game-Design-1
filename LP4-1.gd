extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_calculate_pressed():
	var copies = int($txtCopies.text)
	var price = 0.0
	var cost = 0.0
	if copies > 0 and copies <= 99:
		price = 0.30
	elif copies > 99 and copies <= 499:
		price = 0.28
	elif copies > 499 and copies <= 749:
		price = 0.27
	elif copies > 749 and copies <= 1000:
		price = 0.26
	elif copies > 1000:
		price = 0.25
	else:
		$lblOut.text = "invalid number of copies"
		return
	cost = price * copies
	$lblOut.text = "price per copy is $" + str(price) + "\nTotal cost is $%.2f" % cost
	
		
		


func _on_clear_pressed():
	$lblOut.text = ""


func _on_exit_pressed():
	get_tree().quit()

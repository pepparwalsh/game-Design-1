extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_calculate_pressed():
	$ItemList.add_item("Function chart")
	for num in range(2, 10+1):
		var numsquared = num**2
		var line = "%d   %d   %d   %d" % [num,num +1, num * 2, num * num]
		$ItemList.add_item(line)
		
		


func _on_clear_pressed():
	$ItemList.clear()


func _on_exit_pressed():
	get_tree().quit()
	
	

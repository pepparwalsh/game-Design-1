extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_calculate_pressed():
	$ItemList.add_item("")
	for num in range(-25, 0):
		var Cubed = num**3
		var Cubedroot = (abs(num)**0.33)*-1
		var line = "%d   %d   %d"% [num, Cubedroot, Cubed]
		$ItemList.add_item(line)
	for num in range(1, 25):
		var Cubed = num**3
		var Cubedroot = (num)**0.33
		var line = "%d   %d   %.4f"% [num, Cubedroot, Cubed]
		$ItemList.add_item(line)
	


func _on_clear_pressed():
	$Itemlist.Clear()
	
	
func _on_exit_pressed():
	get_tree().quit()

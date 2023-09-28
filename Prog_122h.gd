extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_clear_pressed():
	$ItemList.clear()
	

func _on_exit_pressed():
	get_tree().quit()
	

func _on_claculate_pressed():
	$ItemList.add_item("")
	for num in range(1, 20+1):
		var numsquared = num*num
		var squareroot = sqrt(num)
		var Cubed = num**3
		var fourthRoot = num**0.25
		var line = "%d   %d   %.4f   %d   %.4f" % [num, numsquared, squareroot, Cubed, FourthRoot ]
		$ItemList.add_item(line)

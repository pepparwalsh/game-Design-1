extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func getArea(length, width):
	var area = length * width
	return area
	
func getPerim(length, width):
	return 2 * length + 2 * width
	
func sayHi():
	print("Hi!")


func _on_claculate_pressed():
	sayHi()
	var l = int($txtLen.text)
	var w = int($txtWid.text)
	var a = getArea(l, w)
	var p = getPerim(l, w)
	$lblOut.text = "Area: %d\nPerimeter: %d" % [a, p]
	


func _on_clear_pressed():
	$lblOut.text=""
	
	

func _on_exit_pressed():
	get_tree().quit()
	

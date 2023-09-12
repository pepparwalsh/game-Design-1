extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_claculate_pressed():
	var rad = float($txtRad.text)
	var area = PI * pow(rad, 2) # radius^2
	var circ = 2 * PI * rad
	$label.text = "Area =" + str(area) + "\nCircumference= " + str(circ)


func _on_clear_pressed():
	$label.text = ""
	


func _on_exit_pressed():
	get_tree().quit()
	

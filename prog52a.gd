extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_exit_pressed():
	get_tree().quit()
	
func _on_clear_pressed():
	$txtlen.text = ""
	$txtwid.text = ""
	$lblout.text = ""
	
func _on_calc_pressed():
	var length = int($txtlen.text)
	var width = int($txtwid.text)
	var area = length * width
	var perimiter = length + 2 * width
	$lblout.text = "Area; " + str(area) + \
	"\nperimiter; " + str(perimiter)

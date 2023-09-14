extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_calculate_pressed():
	var speedLimit = int($txtLimit2.text)
	var carspeed = int($txtSpeed.text)
	var milesOver = carspeed - speedLimit
	var fine = 20 + (milesOver * 5)
	$lblOut.text = "Fine: %.2f" % fine
	
	


func _on_clear_pressed():
	$lblOut.text = ""
	
	


func _on_exit_pressed():
	get_tree().quit()
	

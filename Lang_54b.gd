extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_clear_pressed():
	$lblOut.text=""
	
	
func _on_exit_pressed():
	get_tree().quit()
	
	
	


func _on_calculate_pressed():
	var one = int($line1.text)
	var two = int($line2.text)
	var three = int($line3.text)
	var four = int($line4.text)
	var sum = one + two + three + four
	var ave = sum/4 
	$lblOut.text = " sum= %d \n ave = %d " % [sum, ave]
	
	
	

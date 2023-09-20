extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_calculate_pressed():
	var Weight = int($txtWeight.text)
	var Width = int($txtWidth.text)
	var Height = int($txtHeight.text)
	var Length = int($txtLength.text)
	var Size = Height*Width*Length
	if 
	
	









func _on_exit_pressed():
	get_tree().quit()
	
	


func _on_clear_pressed():
	$lblOut.text = ""
	

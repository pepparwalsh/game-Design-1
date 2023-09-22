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
	if Size <= 100000 and Weight <= 27:
		$lblOut.text = "its good"
	elif Size > 100000 and Weight > 27:
		$lblOut.text = "Too big and too heavy"
	elif Size > 100000:
		$lblOut.text = "Too big"
	elif Weight > 27:
		$lblOut.text = "Too heavy"
	
	



func _on_exit_pressed():
	get_tree().quit()
	
	
func _on_clear_pressed():
	$lblOut.text = ""
	

extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	


func _on_calculate_pressed():
	var len = randi() % (14 - 1) + 1 
	var wid = randi() % (23 - 2) + 2
	var area = len * wid
	var rnd = randf()
	var rnd2 = randf_range(-5., 5.)
	# %d means int, %f means float, %.#f means round to # decimals
	$Label.text = "Len: %d\nWid: %d\nArea: %d\nRnd1: %f\nRnd2: %f" % [len, wid, area, rnd, rnd2]
	

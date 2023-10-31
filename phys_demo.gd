extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		var nball = preload("res://phys_ball.tscn").instantiate()
		nball.posistion = event.position
		add_child(nball)
		
func _on_gravslider_value_changed(value):
	for child in get_children():
		if child is RigidBody2D:
			child.apply_central_impulse(Vector2(1,0)*500)
			
	func _on_button_2-pressed():
		var V_inertia = float($Panel/txtInertia.text)
		var V_X = float($Panel/txtVx.text)
		var V_Y = float($Panel/txtVy.text)
		var velcoiy = Vector2(V_X, V_Y)
		for child in get_children():
			if child is RigidBody2D:
				child.inertia = V_inertia
				child.Linear_velocity = velocity
		

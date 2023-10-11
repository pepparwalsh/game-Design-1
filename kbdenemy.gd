extends RigidBody2D

var speed = 100
var direction = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()
	
func _physics_process(delta):
	self.linear_velocity.x = speed * direction
	

func _on_timer_timeout():
	direction *= -1
	
func _on_body_entered(body):
	if body.name == "kbdplayer":
		body.queue_free()
		OS.alert("You Died!")
		

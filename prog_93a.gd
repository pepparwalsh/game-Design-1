extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass#Replwith function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

	
	
func _on_clear_pressed():
	$Line1.text = ""
	
	
func _on_exit_pressed():
	get_tree().quit()
	
	


func _on_calculate_pressed():
	var watts = int($Line1.text)
	var Baserate = watts * 0.0475
	var Surcharge = Baserate * .10
	var Citytax = Baserate * .03
	var Total = Baserate + Surcharge + Citytax
	var LatePayment = (Total * 0.04) + Total 
	$Label2.text = "Baserate="+str(Baserate)+"\nSurcharge="+str(Surcharge)+"\nCitytax="+str(Citytax)+"\nLatePayment="+str(LatePayment)+"\nTotal="+str(Total)
	
	
	
	
	
	

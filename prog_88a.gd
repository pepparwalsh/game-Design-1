extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_calculate_pressed():
	var num1 = int($txtNum1.text)
	var num2 = int($txtNum2.text)
	var Sum = num1 + num2
	var Diff = num1 - num2
	var Abs = abs(Diff)
	var Max = 0
	var Min = 0
	var pro = num1 * num2
	var Average = (num1 + num2)/2
	
	if num1 > num2:
		Max = num1
	else: 
		Max = num2
		
	if Max == num1:
		Min = num2
	else:
		Min = num1
	
	$lblOut.text = "Sum = " + str(Sum) + \
					"\nDifference = " + str(Diff) + \
					
					"\nAbs. Distance = " + str(Abs) + \
					"\nMax  = " + str(Max) + \
					"\nMin = " + str(Min) + "\nProduct = " + str(pro) + "\nAverage = " + str(Average)
				
			
		
	
	
	pass # Replace with function body.


func _on_exit_pressed():get_tree().quit()






func 
	

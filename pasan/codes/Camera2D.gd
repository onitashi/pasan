extends Camera2D

var k = 0


func _ready():
	pass 

func _process(delta):
	var x_input = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	
	if x_input < 0:
		if k == 0:
			k = 1
			move_local_x(-128)
	elif x_input > 0:
		if k == 1:
			k = 0
			move_local_x(128)
	

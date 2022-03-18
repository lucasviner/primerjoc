extends KinematicBody2D

var velocitat_base = 200 
var velocitat = Vector2.ZERO	
var gravetat = Vector2.DOWN * 980
var salt = Vector2.UP * 500

func _physics_process(delta):
	velocitat.x = 0
	
	if Input.is_action_pressed("mou dreta"):
		velocitat += Vector2.RIGHT * velocitat_base
		 
	if Input.is_action_pressed("mou esquerra"):
		velocitat += Vector2.LEFT * velocitat_base  
		
	if Input.is_action_just_pressed("mou adalt") and is_on_floor():
		velocitat += salt  
	
	velocitat += gravetat * delta 
	velocitat = move_and_slide(velocitat, Vector2.UP)
	
		
		
	

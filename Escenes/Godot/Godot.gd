extends Area2D

var velocitat := 500
var direccio = Vector2(0,0)

#export per a que aparegui en tots llocs, var per a definir una variable i func
#pper definir una funció, no def. Ready s'inicia cada cop que comença el programa

# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = 0
	position = Vector2(500,300)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	position += velocitat * delta
#	if position.x >= 1024:
#		velocitat.x = -velocitat.x 
#		position.x = 1024
#	if position.x <= 0:
#		velocitat.x = -velocitat.x
#		position.x= 0
#	if position.y >= 600:
#		velocitat.y = -velocitat.y
#		position.y= 600
#	if position.y <= 0:
#		velocitat.y = -velocitat.y
#		position.y = 0
	direccio = Vector2.ZERO
	if Input.is_action_pressed("mou dreta"):
		direccio += Vector2.RIGHT
		
#		modulate = Color(1,0,0)  		 
	if Input.is_action_pressed("mou esquerra"):
		direccio += Vector2.LEFT
		
	if Input.is_action_pressed("mou adalt"):	
		direccio += Vector2.UP
		
	if Input.is_action_pressed("mou abaix"):
		direccio += Vector2.DOWN
		
	position += direccio.normalized() * velocitat * delta
	direccio= Vector2(0,0)


func _on_Personatge_area_entered(area: Area2D):
	 # Replace with function body.
	
	if $AnimatedSprite.is_in_group('Final'):
		modulate = Color(1,0,0)
		 
	if $AnimatedSprite.is_in_group('Inici'):
		modulate = Color(0,1,0)
		
		
func _on_Personatge_area_exited(area):
	modulate = Color(1,1,1) # Replace with function body.
	

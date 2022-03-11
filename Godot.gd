extends Sprite

var velocitat := 300
var direccio = Vector2(0,0)

#export per a que aparegui en tots llocs, var per a definir una variable i func
#pper definir una funció, no def. Ready s'inicia cada cop que comença el programa

# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = 90
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
	position += direccio * velocitat * delta
	if Input.is_action_pressed("mou dreta"):
		direccio = Vector2(1,0)   		 
		

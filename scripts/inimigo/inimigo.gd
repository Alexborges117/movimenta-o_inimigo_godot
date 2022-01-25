extends KinematicBody2D

var gravidade = 4000
var speed = 200

var velocidade = Vector2.ZERO
var dir = 1

func _physics_process(delta):
	
	velocidade.y += gravidade * delta
	
	if is_on_floor() and $Ray.is_colliding():
		if dir == 1:
			$sprite.flip_h = false
			speed = 100
			velocidade.x = speed
			$Ray.position.x = 40
		if dir == -1:
			$sprite.flip_h = true
			speed = -100
			velocidade.x = speed
			$Ray.position.x = -40
	else:
		dir *= -1
		$Ray.position.x *= -1
		
	velocidade = move_and_slide(velocidade,Vector2.UP)

# movimenta-o_inimigo_godot
movimentação basica godot inimigo

o projeto consiste em fazer o inimigo do seu jogo se mover
da direita para a esquerda e retornar para o outro lado quando chegar no final.
==============================================================================
estrutura do inimigo
-KinematicBody2D
-AnimatedSprite
-CollisionShape2D
-Raycast2d

°Adicionar uma sprite em AnimatedSprite para que o inimigo fique visivel

°Adicionar um corpo ao CollisionShape2D

°Raycast2d = para detectar a colisão para qnd chegar no final seja feita a volta
cast to 

x=0
y=30

=========================================================================

Criação do script em KinematicBody2D

variaveis:
gravidade
speed
velocidade
direração 

=========================================================================

Var gravidade= 4000
var speed = 200

var velocidade = Vector2.ZERO
var dir = 1

func _physics_process(delta):

velocidade.y += gravidade * delta # aplicando a gravidade
	
	if is_on_floor() and $Ray.is_colliding():
		if dir == 1:
			$sprite.flip_h = false 
			speed = 100
			velocidade.x = speed
			$Ray.position.x = 40
		if dir == -1:
			$sprite.flip_h = true#
			speed = -100
			velocidade.x = speed
			$Ray.position.x = -40
	else:
		dir *= -1
		$Ray.position.x *= -1
		
	velocidade = move_and_slide(velocidade,Vector2.UP) #movimmentação do inimigo
================================================================================================





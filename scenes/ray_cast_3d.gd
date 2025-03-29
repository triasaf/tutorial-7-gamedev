extends RayCast3D

var current_collider

@export var player : NodePath  # Set this in inspector
@onready var player_node : CharacterBody3D = get_node(player)

func _ready():
	pass

func _process(delta):
	var collider = get_collider()

	if is_colliding() and collider is Interactable:
		if Input.is_action_just_pressed("interact"):
			# for certain interact functions that need to update the player
			# eg. pick item
			collider.interact(player_node)

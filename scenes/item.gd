extends Interactable


var picked_up: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func interact(interactor: Variant = null) -> void:
	if interactor and interactor.has_method("add_to_inventory"):
		picked_up = true
		interactor.add_to_inventory(self)
		print(interactor)
		print(picked_up)
		queue_free()

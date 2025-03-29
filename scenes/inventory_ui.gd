extends CanvasLayer

@onready var items_container = $Panel/VBoxContainer/HBoxContainer

func update_inventory(items: Array):
	# Clear previous items
	for child in items_container.get_children():
		child.queue_free()
	
	# Add current items
	for item in items:
		var label = Label.new()
		label.text = str(item.name)
		items_container.add_child(label)

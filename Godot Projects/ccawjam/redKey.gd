extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player2":
			get_parent().get_node(get_path()).queue_free()
			get_node("/root/World/redDoor").queue_free()
			pass
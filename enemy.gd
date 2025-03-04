extends StaticBody2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		body.hitAudio.play()
		#body.visible = false
		#await get_tree().create_timer(1.0).timeout
		body.lives -= 1
		body.emit_signal("lives_updated", body.lives)
		body.respawn()
		
		if body.lives == 0:
			body.queue_free()
			await get_tree().create_timer(1.0)
			get_tree().change_scene_to_file("res://game_over.tscn")

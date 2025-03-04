extends Camera2D

@export var player : CharacterBody2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#global_position.y = clamp(global_position.y, -100, 280)
	if player != null:
		self.global_position = lerp(self.global_position, player.global_position, 0.75)

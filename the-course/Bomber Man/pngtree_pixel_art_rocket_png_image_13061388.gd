extends Sprite2D
@export var time = 5
@export var speed = 50
@onready var player = $"../RigidBody2D/body"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var a:float = 10 / 17.0
	var b:float = 0
	
	for i in range(17):
		b = a * 17.0
	print(b)
	pass
	var tot_time:float = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var to_player:Vector2 = player.global_position - global_position
	if to_player.length() > 0.5:
		to_player = to_player.normalized()
		global_position = global_position + to_player * speed * delta
		pass

func _on_Sprite2D_body_entered(body):
	if Sprite2D.name.begins_with("shidstain"):
		print("collided with", body.get_parent().get_name())
		get_tree().quit()
	pass

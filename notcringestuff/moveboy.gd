extends KinematicBody2D

onready var pathFollow = get_parent();
var moveDirection = 0;

var speed = 5;
var playerHp = 5;

func MovementLoop(delta):
	var previousPos = pathFollow.get_global_transform()
	pathFollow.set_offset(pathFollow.get_offset() + speed + delta)
	var pos = pathFollow.get_global_position()
	

func _physics_process(delta):
	var vel = Vector2();
	
	if Input.is_action_pressed("ui_up"):
		return
	
	MovementLoop(delta)
	

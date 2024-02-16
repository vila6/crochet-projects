extends Control

@export var images : Array[CompressedTexture2D]
var current_image = 0

func _ready():
	current_image = images.size()-1
	update_image()
	
func update_image():
	$Image.texture = images[current_image]

func change_image(direction : int  = 1):
	current_image = (current_image + direction) % images.size()
	update_image()

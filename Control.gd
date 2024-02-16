extends Control
class_name displayer
@onready var image = $Image

@export var images : Array[CompressedTexture2D]
var current_image = 0


func update_image():
	image.texture = images[current_image]

func change_image(direction : int  = 1):
	current_image = (current_image + direction) % images.size()
	update_image()
	
	

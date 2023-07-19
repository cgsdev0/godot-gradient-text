@tool
class_name GradientLabel extends Label

func _ready():
	material = ShaderMaterial.new()
	material.shader = preload("res://gradient_label.gdshader")
	resized.connect(self.update_size)
	self.update_size()
	
func update_size() -> void:
	material.set_shader_parameter("rect_size", get_global_rect().size)

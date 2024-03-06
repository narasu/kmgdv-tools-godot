extends Control

signal file_dropped(filepath)

func _ready():
	get_viewport().files_dropped.connect(on_files_dropped)

func on_files_dropped(files:PackedStringArray):
	var str = " ".join(files)
	#var file = FileAccess.open(files[0], FileAccess.READ)
	file_dropped.emit(files[0])
	#print(file.get_as_text())

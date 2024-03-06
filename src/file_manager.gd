extends Node

var files = {}
var testfile



func _on_file_dropped(filepath:Variant):
	var opened_file = FileAccess.open(filepath, FileAccess.READ)
	testfile = opened_file.get_as_text()
	print(testfile)
	opened_file.close()

func _on_save_clicked():
	var file_to_save = FileAccess.open("res://test.txt", FileAccess.WRITE)
	file_to_save.store_string(testfile)
	file_to_save.close()

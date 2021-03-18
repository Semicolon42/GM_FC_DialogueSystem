// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_dialogue(){
	var _fname,_dialogueCode,_json,_dialogue,_dialogueArray;
    _fname = argument0
	_dialogueCode = argument1
	_json = load_json_object_from_file(_fname)
	
	if (_json != -1) { 
		show_debug_message("JSON sucessfully decoded");
		show_debug_message("isStruct? " + string(is_struct(_json.dialogue)))
		_dialogue = variable_struct_get(_json.dialogue, _dialogueCode)
		show_debug_message(string(_dialogueCode) + ": " + string(is_array(_dialogue)) + ":" + string(_dialogue))
		for(var i = 0; i < array_length(_dialogue); i++) {
		    _str = string(i) + ": " + string(_dialogue[i].mySpeaker) + "--" + string(_dialogue[i].myText.en)
			_dialogueArray[i] = _dialogue[i].myText.en
			show_debug_message(_str)
		}
	
	    show_message("darray?"+string(is_array(_dialogueArray)))
	    show_message("darray?"+string(_dialogueArray))
	
		create_textevent(
			_dialogueArray,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1,
			-1,
		);
	} else { 
		show_message("failed") ; 
	}
}
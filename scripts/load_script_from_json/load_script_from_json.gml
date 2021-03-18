// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_script_from_json(){

    json = "{\"myObj\": { \"apples\":10, \"oranges\":12, \"potatoes\":100000, \"avocados\":0 }, \"myArray\":[0, 1, 2, 2, 4, 0, 1, 5, 1]}"
	data = json_parse(json);
	if variable_struct_exists(data, "myObj")
	{
	if is_struct(data.myObj)
	    {
	    var _names = variable_struct_get_names(data.myObj);
	    var _str = "";
	    for (var i = 0; i < array_length(_names); i++;)
	        {
	        _str = _names[i] + ": " + string(variable_struct_get(data.myObj, _names[i]));
	        show_debug_message(_str);
	        }
	    }
	if variable_struct_exists(data, "myArray")
	    {
	    if is_array(data.myArray)
	        {
	        show_debug_message(data.myArray);
	        }
	    }
	}


    json= load_json_file_into_string()
	show_debug_message(json)
	json = json_parse(json);
	if (json != -1) { 
		show_debug_message("JSON sucessfully decoded");
		show_debug_message("isStruct? " + string(is_struct(json.dialogue)))
		dialogue = variable_struct_get(json.dialogue, "AAA")
		show_debug_message("AAA" + ": " + string(is_array(dialogue)) + ":" + string(dialogue))
		for(var i = 0; i < array_length(dialogue); i++) {
		    _str = string(i) + ": " + string(dialogue[i].mySpeaker) + "--" + string(dialogue[i].myText.en)
			show_debug_message(_str)
			show_message(_str)

		}
	} else { 
		show_message("failed") ; 
	}
}
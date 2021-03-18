// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_json_object_from_file(){
	var _json, _fname, _file;
    _fname = working_directory + argument0
	_json = ""
	
    _file = file_text_open_read(_fname) ; 
	
	while (!file_text_eof(_file)) { 
		_json = _json + " " + file_text_readln(_file);
	}
	file_text_close(_file);
	
    return json_parse(_json);
}
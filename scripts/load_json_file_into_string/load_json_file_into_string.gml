// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_json_file_into_string(){
	json = ""
	
	fname = working_directory + "test.json";
	show_message(fname + ":" + string(file_exists(fname)))
    file = file_text_open_read(fname) ; 
	
	while (!file_text_eof(file)) { 
		json = json + " " + file_text_readln(file);
	}
	file_text_close(file);
	
    return json;
}
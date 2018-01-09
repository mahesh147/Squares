/// scr_load_file

var file=file_text_open_read(working_directory+"save.txt");

if(file!=-1) {
        
var save_string=file_text_read_string(file);
file_text_close(file);

save_string=base64_decode(save_string);
var save_data=json_decode(save_string);
highscore=save_data[?"highscore"];
}
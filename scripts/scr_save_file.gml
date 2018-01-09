/// scr_save_file

var save_data=ds_map_create();

save_data[?"highscore"]=obj_touch.highscore;

var save_string=json_encode(save_data);
save_string=base64_encode(save_string);

var file=file_text_open_write(working_directory+"save.txt");
file_text_write_string(file,save_string);
file_text_close(file);

ds_map_destroy(save_data);


if(room==room0||room==room1||room==room2||room==room3){
	//ovewie old save
	if(file_exists(SAVEFILE)) file_delete(SAVEFILE);

	//Create new save
	var file;
	file  = file_text_open_write(SAVEFILE);
	file_text_write_real(file,room);
	file_text_write_real(file,global.kills);
	file_text_write_real(file,global.p1active);
	file_text_write_real(file,global.p2active);
	file_text_close(file);
}
if(keyboard_check_pressed(vk_space) && global.p1active==false)
{
	global.p1active = true;
	audio_play_sound(snActivePlayer,10,false);
	//with (instance_create_layer(350, 300,"Assets_1" ,sPlayerR))
	//{
	//}
}
if(global.p1active == true){
	draw_sprite(sPlayer, -1, 350, 558);
}

if(gamepad_button_check_pressed(0,gp_face1) && global.p2active==false)
{
	global.p2active = true;
	audio_play_sound(snActivePlayer,10,false);
}
if(global.p2active == true){
	draw_sprite(sPlayer2, -1, 735, 558);
}
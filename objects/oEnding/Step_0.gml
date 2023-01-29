//move player to center
if(global.p1active==true)layer_x("Assets",min(layer_get_x("Assets")+ 1, RES_W *0.5+15));
if(global.p2active==true)layer_x("Assets_1",min(layer_get_x("Assets_1")+ 1, RES_W *0.5-15));

//Progres Text
letters+= spd;
text = string_copy(endtext[currentline],1,floor(letters));

//Next Line
if (letters >= lenght) && (keyboard_check_pressed(vk_anykey))
{
	if(currentline+1 == array_length_1d(endtext))
	{
		SlideTransition(TRANS_MODE.RESTART);
	}
	else
	{
		currentline++;
		letters = 0;
		lenght = string_length(endtext[currentline]);
	}
}
#region //Get Player Input
if (hascontrol)
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
	
	if(abs(gamepad_axis_value(0,gp_axislh)) > 0.2)
	{
		key_left = abs (min(gamepad_axis_value(0,gp_axislh),0));
		key_right = max (gamepad_axis_value(0,gp_axislh),0);
		key_jump = 0;
		controller = 1;
	}
	
	if (gamepad_button_check_pressed(0,gp_face1))
	{
		key_jump = 1;
		controller = 1;
	}
	
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}
#endregion

#region//Calculate Movement

var move = key_right - key_left;

hsp = (move * walksp) + gunkickx;
gunkickx = 0;

vsp = (vsp + grv) + gunkicky;
gunkicky = 0;

#endregion

#region //Jumping

canjump -= 1;
if (canjump > 0) && (key_jump)
	{
		if(room = room1v1){
		vsp =-8;
		canjump = 0;
		}else{
			vsp =-7;
		canjump = 0;
		}
	}
#endregion

#region //Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;
#endregion

#region //Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
#endregion

#region //Animations
if (!place_meeting(x,y+1,oWall))
{
	
	sprite_index = sPlayerA2;
	image_speed = 0;
	
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	canjump = 10;
	if (sprite_index == sPlayerA2)
	{
		audio_sound_pitch(snLanding,choose(0.8,1.0,1.2));
		audio_play_sound(snLanding,4,false);
		repeat(5)
		{
			with (instance_create_layer(x,bbox_bottom,"Bullets",oDust))
			{
				vsp = 0;
			}
		}
		
	}
	image_speed = 1;
	if(hsp == 0)
	{
		sprite_index = sPlayer2;
	}
	else
	{
		sprite_index = sPlayerR2
	}
}


if(hsp < 0){
	image_xscale = -1;
	reverse = true;
}
if(hsp > 0){
	image_xscale = 1;
	reverse = false;
}



#endregion
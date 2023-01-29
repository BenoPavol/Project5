//pozicia zbrane
x = oPlayer2.x;
y = oPlayer2.y+10;

//otocenie zbrane
if(oPlayer2.reverse = true)
{
	image_angle = 180;
	image_yscale = -1;
}
if(oPlayer2.reverse = false)
{
	image_angle = 0;
	image_yscale = 1;
}


firingdelay = firingdelay - 1;
recoil = max(0,recoil -1);

if (gamepad_button_check(0,gp_shoulderrb) && (firingdelay < 0))
{
	recoil = 4;
	firingdelay = 5;
	ScreenShake(2,10);
	audio_sound_pitch(snShot,choose(0.8,1.0,1.2));
	audio_play_sound(snShot,5,false);
	with (instance_create_layer(x,y,"Bullets",oBullet))
	{
		spd = 25;
		
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
	with(oPlayer2)
	{
		gunkicky = lengthdir_y(1, other.image_angle-180);
	}
	
}

//Spätný ráz zbrane
x = x - lengthdir_x(recoil,image_angle);
//y = y - lengthdir_y(recoil,image_angle);


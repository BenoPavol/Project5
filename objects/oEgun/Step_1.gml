	x = owner.x;
	y = owner.y+10;

	image_xscale = abs(owner.image_xscale);
	image_yscale = abs(owner.image_yscale);

	//choose target
	if(instance_exists(oPlayer2)) target = oPlayer2;
	if(instance_exists(oPlayer)) target = oPlayer;
	
	if(instance_exists(oPlayer) && instance_exists(oPlayer2))
	{
		distanceP1 = point_distance(oPlayer.x,oPlayer.y,x,y);
		distanceP2 = point_distance(oPlayer2.x,oPlayer2.y,x,y);
		if(distanceP1 < distanceP2) target = oPlayer;
		if(distanceP1 > distanceP2) 
		{
			target = oPlayer2
		}else{
			target = oPlayer
		}
	}




	//shooting
	if(instance_exists(oPlayer) || instance_exists(oPlayer2))
	{
		if (target.x < x) image_yscale = -image_yscale;
		if (point_distance(target.x,target.y,x,y) < 600)
		{
			image_angle = point_direction(x,y,target.x,target.y);
			countdown --;
			if (countdown <= 0)
			{
				countdown = countdownrate;
				if(!collision_line(x,y,target.x,target.y,oWall,false,false))
				{
				
					audio_sound_pitch(snShot,choose(0.8,1.0,1.2));
					audio_play_sound(snShot,5,false);
					with (instance_create_layer(x,y,"Bullets",oEBullet))
					{
						spd = 10;
						direction = other.image_angle + random_range(-3,3);
						image_angle = direction;
					}
				}
			}
		}
	}


/*
if (instance_exists(oPlayer) || instance_exists(oPlayer2))
{
	if (oPlayer.x < x) image_yscale = -image_yscale;
	if (point_distance(oPlayer.x,oPlayer.y,x,y) < 600)
	{
		image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
		countdown --;
		if (countdown <= 0)
		{
			countdown = countdownrate;
			if(!collision_line(x,y,oPlayer.x,oPlayer.y,oWall,false,false))
			{
				
				audio_sound_pitch(snShot,choose(0.8,1.0,1.2));
				audio_play_sound(snShot,5,false);
				with (instance_create_layer(x,y,"Bullets",oEBullet))
				{
					spd = 10;
					direction = other.image_angle + random_range(-3,3);
					image_angle = direction;
				}
			}
		}
	}
}
*/
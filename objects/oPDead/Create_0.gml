hsp = 3;
vsp = -4;
grv = 0.2;
done = 0;

image_speed = 0;
image_index = 0;

ScreenShake(6,60);
audio_play_sound(snDeath,10,false);
with (oCamera) follow = other.id;
			
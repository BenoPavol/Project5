// Update destination
if (instance_exists(oPlayer) && instance_exists(oPlayer2))
{
	xTo = (follow.x + follow2.x)/2;
	yTo = (follow.y + follow2.y)/2;
		
}else{

	if (instance_exists(oPlayer))
	{
		xTo = follow.x;
		yTo = follow.y;	
	}

	if (instance_exists(oPlayer2))
	{
		xTo = follow2.x;
		yTo = follow2.y;	
	}
}

if(room!=roomEnd){
	if ((!instance_exists(oPlayer) && !instance_exists(oPlayer2)) && (timer >= 31)) {
		if(!instance_exists(oPlayer) && !instance_exists(oPlayer2))
		{
			ScreenShake(6,60);
			SlideTransition(TRANS_MODE.GOTO,room);
		}
	} else {
	timer++;
	}
}

//Updtae object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

//Keep camera center inside room
x = clamp(x,view_w_half + buff,room_width - view_w_half-buff);
y = clamp(y,view_h_half + buff,room_height - view_h_half - buff);

//Screen shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_lenght)*shake_magnitude));

//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);


if (room != roomMenu) && (room != roomEnd)
{
	if(layer_exists("Mountains"))
	{
		layer_x("Mountains",x/2);
	}

	if(layer_exists("Trees"))
	{
		layer_x("Trees",x/4);
	}
}


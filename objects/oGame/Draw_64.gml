/// @description Draw Score

if (room !=roomMenu) && (instance_exists(oPlayer)||instance_exists(oPlayer2))
{
	killtextscale = max(killtextscale * 0.95, 1);
	DrawSetText(c_black,fMenu,fa_right, fa_top);
	draw_text_transformed(RES_W - 8, 12, "Score: " +  string(global.kills) , killtextscale, killtextscale,0);
	draw_set_color(c_white);
	draw_text_transformed(RES_W - 10, 10, "Score: " +  string(global.kills) , killtextscale, killtextscale,0);
}

//spawning players and guns in each room

if(room==room0){
	if(global.p1active==true && !instance_exists(oPlayer)){
		with (instance_create_layer(704, 704,"Player" ,oPlayer))
		{
		}
		with (instance_create_layer(704, 896,"Gun" ,oGunPickup))
		{
		}
	}
	if(global.p2active==true && !instance_exists(oPlayer2)){
		with (instance_create_layer(544, 704,"Player" ,oPlayer2))
		{
		}
		with (instance_create_layer(544, 896,"Gun" ,oGunPickup2))
		{
		}
	}
}

if(room==room1){
	if(global.p1active==true && !instance_exists(oPlayer) && !instance_exists(oPDead)){
		with (instance_create_layer(128, 832,"Player" ,oPlayer))
		{
		}
		with (instance_create_layer(128, 832,"Gun" ,oGun))
		{
		}
	}
	if(global.p2active==true && !instance_exists(oPlayer2) && !instance_exists(oPDead2)){
		with (instance_create_layer(64, 832,"Player" ,oPlayer2))
		{
		}
		with (instance_create_layer(64, 832,"Gun" ,oGun2))
		{
		}
	}
}

if(room==room2){
	if(global.p1active==true && !instance_exists(oPlayer) && !instance_exists(oPDead)){
		with (instance_create_layer(45, 275,"Player" ,oPlayer))
		{
		}
		with (instance_create_layer(45, 275,"Gun" ,oGun))
		{
		}
	}
	if(global.p2active==true && !instance_exists(oPlayer2) && !instance_exists(oPDead2)){
		with (instance_create_layer(127, 275,"Player" ,oPlayer2))
		{
		}
		with (instance_create_layer(127, 275,"Gun" ,oGun2))
		{
		}
	}
}

if(room==room3){
	if(global.p1active==true && !instance_exists(oPlayer) && !instance_exists(oPDead)){
		with (instance_create_layer(64, 928,"Player" ,oPlayer))
		{
		}
		with (instance_create_layer(64, 928,"Gun" ,oGun))
		{
		}
	}
	if(global.p2active==true && !instance_exists(oPlayer2) && !instance_exists(oPDead2)){
		with (instance_create_layer(128, 928,"Player" ,oPlayer2))
		{
		}
		with (instance_create_layer(128, 928,"Gun" ,oGun2))
		{
		}
	}
}

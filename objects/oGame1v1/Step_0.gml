if (instance_exists(oPDead2))
{
	global.p1kills= global.p1kills+1;
	room_restart();
}

if (instance_exists(oPDead))
{
	global.p2kills= global.p2kills+1;
	room_restart();
}
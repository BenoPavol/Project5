/// @desc ScreenShake(magnitude,frames)
/// @arg magnitude sets the strenght of the shake (radius in pixels)
/// @sarg  Frames sets lenght of the shake in frames (60 =1second at 6 fps)
function ScreenShake(argument0, argument1) {
	with (oCamera)
	{
		if (argument0 >shake_remain)
		{
			shake_magnitude = argument0;
			shake_remain = argument0;
			shake_lenght = argument1;
		}
	}


}

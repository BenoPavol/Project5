/// @desc Slide Transition (mode,targetroom)
///@ arg Mode sets transitions between next, restart goto
/// @arg Target sets target room when using the goto mode
function SlideTransition() {

	with (oTransition)
	{
		mode = argument[0];
		if (argument_count > 1) target = argument[1];

	}




}

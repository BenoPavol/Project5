if(room==roomMenu){
	SlideTransition(TRANS_MODE.GOTO,target);
}

if(room==roomActive){
	if(global.p1active==true||global.p2active==true){
		SlideTransition(TRANS_MODE.GOTO,target);
		audio_play_sound(snStartGame,10,false);
	}
}
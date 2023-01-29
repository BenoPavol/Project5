/// @description ?
draw_set_colour(c_black);
draw_rectangle(0,0,rwidth,128,false);
draw_rectangle(0,rheight-128,rwidth,rheight,false);

DrawSetText(c_black, fSign, fa_center, fa_top);
draw_text(rwidth*0.5 + 2, rwidth*0.3 +2, text);
draw_set_color(c_white);
draw_text(rwidth*0.5, rwidth*0.3, text);




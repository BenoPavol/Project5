killtextscale = max(killtextscale * 0.95, 1);
DrawSetText(c_black,fMenu,fa_right, fa_top);
draw_text_transformed(RES_W - 8, 12, "Score: " +  string(global.p2kills) , killtextscale, killtextscale,0);
draw_set_color(c_white);
draw_text_transformed(RES_W - 10, 10, "Score: " +  string(global.p2kills) , killtextscale, killtextscale,0);

DrawSetText(c_black,fMenu,fa_left,fa_top);
draw_text_transformed(8, 12, "Score: " +  string(global.p1kills) , killtextscale, killtextscale,0);
draw_set_color(c_white);
draw_text_transformed(10, 10, "Score: " +  string(global.p1kills) , killtextscale, killtextscale,0);
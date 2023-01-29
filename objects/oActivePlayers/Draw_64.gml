if (timer >= 31) {
DrawSetText(c_black,fMenu,fa_center, fa_top);
draw_text_transformed((rwidth/2)-2, 15, "Press jump button to join",1.5,1.5,0);
draw_set_color(c_white);
draw_text_transformed((rwidth/2)+2, 11, "Press jump button to join",1.5,1.5,0);

DrawSetText(c_black,fMenu,fa_left, fa_bottom);
draw_text_transformed(10, rheight-14, "Back",1.5,1.5,0);
draw_set_color(c_white);
draw_text_transformed(12, rheight-12, "Back",1.5,1.5,0);

DrawSetText(c_black,fMenu,fa_right, fa_bottom);
draw_text_transformed(rwidth-10, rheight-14, "START",1.5,1.5,0);
draw_set_color(c_white);
draw_text_transformed(rwidth-12, rheight-12, "START",1.5,1.5,0);
} else {
timer++;
}
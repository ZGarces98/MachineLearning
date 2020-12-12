/// @description Show Neural Nets

#region Draw Self 

if(!lost) {
	draw_self()
	if(global.selectedPlayer == id) {
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_yellow);
		draw_text_transformed(x,y,"S",5,5,0);
		draw_set_color(c_white);
	}
}
else {
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,c_gray,0.8);
	if(global.selectedPlayer == id ) {
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_yellow);
		draw_text_transformed(x,y,"S",5,5,0);
		draw_set_color(c_white);	
	}
}


#endregion
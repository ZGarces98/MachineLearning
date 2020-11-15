/// @description  tl_playhead_draw( playhead );
/// @function  tl_playhead_draw
/// @param {VisualPlayhead} playhead 
function tl_playhead_draw(argument0) {
	/**
	 * Call this functions in the draw event
	 * playhead is the index of the playhead.
	 */

	var prevcol = draw_get_color();
	var prevalpha = draw_get_alpha();

	////// BACKGROUND BAR
	var _t = argument0;
	var x1 = _t[_playhead.x];
	var y1 = _t[_playhead.y];
	var x2 = x1 + _t[_playhead.width];
	var y2 = y1 + _t[_playhead.height];
    
	var radius = _t[_playhead.back_radius];


	draw_set_color(_t[_playhead.back_color]);
	draw_set_alpha(_t[_playhead.back_alpha]);
	draw_roundrect_ext(x1, y1, x2, y2, radius, radius, false);

	draw_set_color(_t[_playhead.back_border_color]);
	draw_set_alpha(_t[_playhead.back_border_alpha]);
	draw_roundrect_ext(x1, y1, x2, y2, radius, radius, true);


	////// HANDLE 
	if (_t[_playhead.anim] != undefined) {
		var p = _t[_playhead.___progress];
		var ww = _t[_playhead.handle_width] * .5;
		var hh = _t[_playhead.handle_height] * .5;
		var posx = _t[_playhead.x] + _t[_playhead.width] * p;
		var posy = _t[_playhead.y] + _t[_playhead.height] * .5;
		var x1 = posx - ww; 
		var x2 = posx + ww;
		var y1 = posy - hh;
		var y2 = posy + hh;
		var radius = _t[_playhead.handle_radius];


		if (_t[_playhead.___hover]) {
		    draw_set_color(_t[_playhead.handle_hover_color]);
		    draw_set_alpha(_t[_playhead.handle_hover_alpha]);
		} else {
		    draw_set_color(_t[_playhead.handle_color]);
		    draw_set_alpha(_t[_playhead.handle_alpha]);
		}
		draw_roundrect_ext(x1, y1, x2, y2, radius, radius, false);


		if (_t[_playhead.___hover]) {
		    draw_set_color(_t[_playhead.handle_hover_border_color]);
		    draw_set_alpha(_t[_playhead.handle_hover_border_alpha]);
		} else {
		    draw_set_color(_t[_playhead.handle_border_color]);
		    draw_set_alpha(_t[_playhead.handle_border_alpha]);
		}
		draw_roundrect_ext(x1, y1, x2, y2, radius, radius, true);
	}

	draw_set_color(prevcol);
	draw_set_alpha(prevalpha);



}

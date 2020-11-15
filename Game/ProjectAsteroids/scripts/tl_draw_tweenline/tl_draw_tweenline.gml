/// @description  tl_draw_tweenline( tweenline, x, y, width, tween_height);
/// @function  tl_draw_tweenline
/// @param {Tweenline|"seconds"|"frames"} tweenline - The tweenline to draw. 
/// @param {real} x - The x position
/// @param {real} y - The y position
/// @param {real} width - The width
/// @param {real} tween_height - The height of each tween
function tl_draw_tweenline(argument0, argument1, argument2, argument3, argument4) {
	/**
	 * Draws a graph showing all the nested tweens inside a tweenline.
	 * If you pass "frames" or "seconds" as the tweenline argument, the root frames/seconds tweenline will be drawn.  
	 */

	var tweenline = argument0;
	var xx = argument1;
	var yy = argument2; 
	var ww = argument3;
	var tween_height = argument4;

	var initialtime = 0;
	if (is_string(tweenline)) {
		tweenline = (tweenline == "frames") ? global._tw_tl_FRAMES : global._tw_tl_SECONDS;
		initialtime = tweenline[TLANIM.TIME];
	}
	var tween = tweenline[TLTIMELINE.FIRST];
	var totaltime = anim_get_duration(tweenline);


	draw_set_halign(fa_left);
	draw_set_halign(fa_top);
	draw_set_color(c_white);
	draw_set_alpha(1);

	var duration_str = (totaltime == infinity ? "Infinity" : string(totaltime));
	tl_draw_text(xx, yy, "Duration: " + duration_str);
	yy += string_height("Duration: ");

	var hover_anim = undefined;
	var i = 0;
	while (tween != undefined) {
	    var starttime = tween[TLANIM.STARTTIME] - initialtime;
	    var duration = anim_get_duration(tween);
		if (anim_get_totalduration(tween) >= infinity) {
			totaltime = starttime + duration;
			//draw_text(xpos, ypos, string(totaltime));
		}
	
		var xpos = xx + ww * (starttime / totaltime);
		var ypos = yy + tween_height  * i;
		var width = ww * (duration / totaltime) * tween[TLANIM.TIMESCALE];
	
		draw_set_alpha(1);
		if (is_tween(tween)) {
		
			tl_draw_tween_graph(tween, xpos, ypos, width, tween_height, tween_height / 4);
		
			var repeats = anim_get_repeat(tween);
			repeats = (repeats < 0 || repeats == infinity) ? 1 : repeats + 1;

		    if (point_in_rectangle(mouse_x, mouse_y, xpos, ypos, xpos + width * repeats, ypos + tween_height)) {
				hover_anim = tween;	
			}
		
		} else if (is_tweenline(tween)) {
			tl_draw_tweenline(tween, xpos, ypos, width , tween_height);
		}
	
		tween = tween[TLANIM.NEXT];
		i++;
	}

	if (hover_anim != undefined) {
		var str = anim_debug_info(hover_anim);
		var text_height = string_height(str);
		var text_width = string_width(str);
		draw_set_valign((mouse_y + text_height > room_height) ? fa_bottom : fa_top);
		draw_set_halign((mouse_x - text_width < 0) ? fa_left : fa_right);
		tl_draw_text(mouse_x, mouse_y, str);
	}



}

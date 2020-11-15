/// @description  tl_draw_easing_graph(ecuation_formula_or_tween, x1, y2, x2, y2 [, linewidth=1 [, pixelPrecision=5]]);
/// @function  tl_draw_easing_graph
/// @param ecuation_formula_or_tween
/// @param {real} x1 - The x position of the upper left corner of the graph
/// @param {real} y2 - The y position of the upper left corner of the graph
/// @param {real} x2 - The x position of the bottom right corner of the graph
/// @param {real} y2 - The y position of the bottom right corner of the graph
/// @param {real} [linewidth=1] - The width of the line
/// @param {real} [pixelPrecision=5] - The pixel precision 
function tl_draw_easing_graph() {
	/**
	 * Draws an easing ecuation or the easing ecuation of a tween, in the rectangle specified.
	 * You can also change the line width and the pixel precision. If the pixel precision is a very low value,
	 * it means that It will need more time to render the desired function. 
	 * Use this function for debug purposes only. 
	 * 
	 * You need to call draw_aa_init at the beginin of your game to use the antialised line.
	 * If you don't want AA lines, remove the call to draw_line_width_aa and replace it with draw_line_width
	 */
 
	var ease = argument[0];
	if (is_tween(ease)) {
	    ease = ease[TLTWEEN.EASE];
	} else if (is_tweenline(ease)) {
		return __tl_private_error(ease, "The passed parameter to tl_draw_easing_graph is a Tweenline, not a Tween or easing");	
	}
	if (script_exists(ease)) {
		var xpos = argument[1]; //The X coordinate of the top left corner of the graph
		var ypos = argument[2]; //The Y coordinate of the top left corner of the graph
		var width = max(argument[3] - xpos, 0.0001); //The width of the graph (the max is to avoid division by zero) 
		var height = argument[4] - ypos; //The height of the graph
		var linewidth = (argument_count > 5) ? argument[5] : 1;
		var dif = (argument_count > 6) ? argument[6] / width : 5 / width;
	
		var arrx, arry, count=0;
		for(var i=0; i < 1; i+= dif) {
		    arrx[count] = i;
		    arry[count++] = 1 - script_execute(ease, clamp(i, 0, 1));
		}
		arrx[count] = 1;
		arry[count] = 1 - script_execute(ease, 1);

		var j = 0;
		for (var i=0; i < count; i++) {
		    j++;
		    // If you don't want AA lines, 
		    // replace it with draw_line_width
		    draw_line_width_aa(
		        xpos + arrx[i] * width, 
		        ypos + arry[i] * height, 
		        xpos + arrx[j] * width, 
		        ypos + arry[j] * height,
		        linewidth
		    );
		}
	}



}

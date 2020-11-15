/// @description  tl_playhead_create( anim );
/// @function  tl_playhead_create
/// @param {Anim} anim - Tween or Tweenline to control. You can pass undefined if you want to set it later.
/// @returns {VisualPlayhead} The visual playhead
function tl_playhead_create(argument0) {
	/**
	 * Creates a interactive visual playhead to control a tween or tweenline.
	 * 
	 * @example
	 * // create
	 * p = tl_playhead_create( my_tween_or_tweenline );
	 *     
	 * // step
	 * tl_playhead_step( p );
	 *     
	 * // draw
	 * tl_playhead_draw( p );
	 * 
	 */


	enum _playhead{
	    anim,
	    width,
	    height,
	    x,
	    y,
	    handle_width,
	    handle_height,
	    back_radius,
	    back_color,
	    back_alpha,
	    back_border_color,
	    back_border_alpha,
	    handle_radius,
	    handle_area,
	    handle_color,
	    handle_alpha,
	    handle_border_color,
	    handle_border_alpha,
	    handle_hover_color,
	    handle_hover_alpha,
	    handle_hover_border_color,
	    handle_hover_border_alpha,
		use_total_progress,
	    ___hover,
	    ___drag,
	    ___progress,
	    ___was_playing
	}


	var _t;
	_t[_playhead.anim] = is_anim(argument0) ? argument0 : undefined;;

	_t[_playhead.width] = room_width*.7;
	_t[_playhead.height] = 12;
	_t[_playhead.x] = (room_width-_t[_playhead.width])*.5;
	_t[_playhead.y] = room_height*.8;
	_t[_playhead.handle_width] = _t[_playhead.height]*1.5;
	_t[_playhead.handle_height] = _t[_playhead.height]*1.5;
	_t[_playhead.use_total_progress] = false;

	_t[_playhead.back_radius] = 4;
	_t[_playhead.back_color] = make_color_rgb(80,80,80);
	_t[_playhead.back_alpha] = 0.3;
	_t[_playhead.back_border_color] = make_color_rgb(102,102,102);
	_t[_playhead.back_border_alpha] = 0.5;

	_t[_playhead.handle_radius] = 4;
	_t[_playhead.handle_area] = 2; //1 is the default. (2 is twice as bigger, 0.5 is half of the size)
	_t[_playhead.handle_color] = make_color_rgb(230, 230, 230);
	_t[_playhead.handle_alpha] = 1;
	_t[_playhead.handle_border_color] = make_color_rgb(211, 211, 211);
	_t[_playhead.handle_border_alpha] = 1;

	_t[_playhead.handle_hover_color] = make_color_rgb(218, 218, 218);
	_t[_playhead.handle_hover_alpha] = 1;
	_t[_playhead.handle_hover_border_color] = make_color_rgb(120, 120, 120);
	_t[_playhead.handle_hover_border_alpha] = 1;


	////////// PRIVATE //////////////

	_t[_playhead.___hover] = false;
	_t[_playhead.___drag] = false;
	_t[_playhead.___progress] = 0;
	_t[_playhead.___was_playing] = false;

	return _t;








}

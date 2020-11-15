/// @description  tl_playhead_step( playhead );
/// @function  tl_playhead_step
/// @param {VisualPlayhead} playhead 
function tl_playhead_step(argument0) {
	/**
	 * Place this script in step.
	 * Playhead is the index of the playhead
	 */


	var _t = argument0;

	// If there are 
	if (_t[_playhead.anim] == undefined) {
		_t[@ _playhead.___progress] = undefined;
		return;
	}

	var ww = _t[_playhead.handle_width] * .5 * _t[_playhead.handle_area];
	var hh = _t[_playhead.handle_height] * .5 * _t[_playhead.handle_area];

	if (_t[ _playhead.use_total_progress]) {
		_t[@ _playhead.___progress] = anim_get_totalprogress(_t[_playhead.anim]);
	} else {
		_t[@ _playhead.___progress] = anim_get_progress(_t[_playhead.anim]);
	}

	var p = _t[_playhead.___progress];

	var posx = _t[_playhead.x] + _t[_playhead.width] * p;
	var posy = _t[_playhead.y] + _t[_playhead.height] * .5;

	var x1 = posx - ww; 
	var x2 = posx + ww; 
	var y1 = posy - hh;
	var y2 = posy + hh;
	var x1bar = _t[_playhead.x];
	var y1bar = _t[_playhead.y];
	var x2bar = x1bar + _t[_playhead.width];
	var y2bar = y1bar + _t[_playhead.height];
	_t[@ _playhead.___hover] = false;

	if (_t[_playhead.___drag]) {
	    if (mouse_check_button_released(mb_left)) {
	        _t[@ _playhead.___drag] = false;
	        if (_t[_playhead.___was_playing]) {
				anim_play(_t[_playhead.anim]);
	        }
	    }
		var p = (mouse_x - _t[_playhead.x]) / _t[_playhead.width];
	    p = clamp(p, 0, 1);
	    _t[@ _playhead.___progress] = p;
	
		if (_t[ _playhead.use_total_progress]) {
			anim_set_totalprogress(_t[_playhead.anim], p);
		} else {
			anim_set_progress(_t[_playhead.anim], p);
		}
	} 

	else if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2)) {
	    _t[@ _playhead.___hover] = true;
	    if (mouse_check_button_pressed(mb_left)) {
	        _t[@ _playhead.___drag] = true;
        
        
	        _t[@_playhead.___was_playing] = !anim_get_paused(_t[_playhead.anim]);
	        anim_pause(_t[_playhead.anim]);
	    }
	} 

	else if (point_in_rectangle(mouse_x, mouse_y, x1bar, y1bar, x2bar, y2bar)) {
	    if (mouse_check_button_pressed(mb_left)) {
	        _t[@ _playhead.___drag] = true;
			_t[@_playhead.___was_playing] = !anim_get_paused(_t[_playhead.anim]);
			anim_pause(_t[_playhead.anim]);
	    }
	}














}

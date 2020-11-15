/// __tl_private_anim_seek(anim, time); 
function __tl_private_anim_seek(argument0, argument1) {
	/**
	 * @private
	 * Seek an animation to a specified time
	 */

	var _a = argument0;
	var time = argument1;

	var parent = _a[TLANIM.PARENT];

	if (parent[TLTIMELINE.SMOOTHCHILDTIMING]) {
		if (_a[TLANIM.TOTALDURATION] == undefined) {
			anim_get_totalduration(_a);
		}
		if (time > _a[TLANIM.TOTALDURATION]) {
			time = _a[TLANIM.TOTALDURATION];
		}
	
		var t = (_a[TLANIM.PAUSED] ? _a[TLANIM.PAUSETIME] : parent[TLANIM.TIME]);
		_a[@ TLANIM.STARTTIME] = t - ((!_a[TLANIM.REVERSED] ? time : _a[TLANIM.TOTALDURATION] - time) / _a[TLANIM.TIMESCALE]);
		
		if (parent[TLANIM.TOTALDURATION] != undefined) {
			__tl_private_anim_uncache(parent, false);
		}
	}

	if (time != _a[TLANIM.TOTALTIME]) {
		__tl_private_anim_render(_a, time);
	}





}

/// __tl_private_anim_unpause(anim); 
function __tl_private_anim_unpause(argument0) {
	/**
	 * @private
	 * Unpause an animation
	 */

	var _a = argument0;


	if (_a[TLANIM.PAUSED]) {
		var parent = _a[TLANIM.PARENT]; 
		if (parent != undefined && parent[TLTIMELINE.SMOOTHCHILDTIMING]) {
			_a[@ TLANIM.STARTTIME] += parent[TLANIM.TIME] - _a[TLANIM.PAUSETIME]; //TODO: replace time with rawTime.
		}
		_a[@ TLANIM.PAUSETIME] = undefined;
		_a[@ TLANIM.PAUSED] = false;
		_a[@ TLANIM.ACTIVE] = (_a[TLANIM.TOTALTIME] > 0 && _a[TLANIM.TOTALTIME] < _a[TLANIM.TOTALDURATION]);
	}
	if (_a[TLANIM.GC]) {
		__tl_private_anim_revive(_a);
	}


}

/// __tl_private_anim_pause(anim); 
function __tl_private_anim_pause(argument0) {
	/**
	 * @private
	 * Pause an animation
	 */

	var _a = argument0;


	if (!_a[TLANIM.PAUSED]) {
		var parent = _a[TLANIM.PARENT]; 
		_a[@ TLANIM.PAUSETIME] = parent[TLANIM.TIME];
		_a[@ TLANIM.PAUSED] = true;
		_a[@ TLANIM.ACTIVE] = false;
	}


}

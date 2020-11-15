/// __tl_private_anim_revive(anim); 
/// @param {Animation} anim - The anim
function __tl_private_anim_revive(argument0) {
	/**
	 * @private 
	 * Reactivate an Anim
	 */

	var _a = argument0;



	if (_a[TLANIM.GC]) {
		__tl_private_timeline_add(_a[TLANIM.PARENT], _a, _a[TLANIM.STARTTIME] - _a[TLANIM.DELAY]);
		_a[@ TLANIM.GC] = false;
	}

	_a[@ TLANIM.ACTIVE] = (!_a[TLANIM.PAUSED] && _a[TLANIM.TOTALTIME] > 0 && _a[TLANIM.TOTALTIME] < _a[TLANIM.TOTALDURATION]);


	if (_a[TLANIM.TYPE] == TLTYPE.TIMELINE) {
		__tl_private_timeline_labels_restore(_a);	
	}




}

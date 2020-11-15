/// @function anim_get_totalduration(anim);
/// @param {Animation} anim The animation
/// @returns {real} The Animation's total duration
/// @description 
function anim_get_totalduration(argument0) {
	/**
	 * Gets the total duration of the tween in seconds 
	 * (or frames for frames-based tweens) including any `repeats` or `repeatdelays`.
	 * `duration`, by contrast, does **NOT** include `repeats` and `repeatdelays`. 
	 * For example, if the tween has a `duration` of 10, a repeat of 1 and a 
	 * `repeatdelay` of 2, the `totalduration` would be 22.
	 *
	 */

	var _a = argument0;
	if (_a[TLANIM.TOTALDURATION] == undefined) {
		if (_a[TLANIM.TYPE] == TLTYPE.TIMELINE) {
			__tl_private_timeline_calculate_duration(_a);
		} else {
			_a[@ TLANIM.TOTALDURATION] = (_a[TLANIM.REPEAT] == -1) ? infinity : _a[TLANIM.DURATION] * (_a[TLANIM.REPEAT] + 1) + (_a[TLANIM.REPEATDELAY] * _a[TLANIM.REPEAT]);
		}
	}
	return _a[TLANIM.TOTALDURATION];





}

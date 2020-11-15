/// __tl_private_anim_kill(anim [, force_autoremovechildren=false]);
/// @param {Anim} anim - The anim
/// @param {bool} [force_autoremovechildren=false] - If true, the children will be allways removed.
function __tl_private_anim_kill() {
	/**
	 * @private
	 * If an animation is killed, it is not eligible to be rendered. Killing it
	 * essentially removes it from its parent timeline and stops protecting it from garbage collection.
	 */

	var _a = argument[0];
	var parent = _a[TLANIM.PARENT];
	if (parent[TLTIMELINE.AUTOREMOVECHILDREN] || (argument_count > 1 && argument[1])) {
		_a[@ TLANIM.GC] = true;
		_a[@ TLANIM.ACTIVE] = false;
		__tl_private_timeline_remove(_a[TLANIM.PARENT], _a);
	}

	if (_a[TLANIM.TYPE] == TLTYPE.TIMELINE) {
		__tl_private_timeline_labels_save(_a);	
	}


}

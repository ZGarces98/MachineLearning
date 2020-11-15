/// @function anim_get_parent(anim);
/// @param {Animation} anim The animation
/// @returns {real} The Animation's parent timeline
/// @description 
function anim_get_parent(argument0) {
	/**
	 * Returns the parent tweenline of a given `anim` (tween or tweenline). If the `anim` has no parent, it returns `undefined`.
	 * 
	 * An Animation instance cannot exist in multiple timelines at once.
	 */


	return argument0[TLANIM.GC] || (argument0[TLANIM.PARENT] == global._tw_tl_FRAMES || argument0[TLANIM.PARENT] == global._tw_tl_SECONDS)
		? undefined 
		: argument0[TLANIM.PARENT];





}

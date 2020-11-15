/// @function anim_get_reversed(anim);
/// @param {Animation} anim The animation
/// @returns {boolean} The Animation's reversed state (True for reversed, false for not reversed)
/// @description 
function anim_get_reversed(argument0) {
	/**
	 * Get the animation's reversed state which indicates whether or not the 
	 * animation should be played backwards. This value is not affected by `yoyo` 
	 * repeats and it does not take into account the reversed state of anscestor 
	 * timelines. So for example, a tween that is not reversed might appear 
	 * reversed if its parent timeline (or any ancenstor timeline) is reversed.
	 *
	 */
	return argument0[TLANIM.REVERSED];


}

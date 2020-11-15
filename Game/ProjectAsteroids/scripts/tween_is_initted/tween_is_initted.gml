/// @description  tween_is_initted(tween)
/// @function  tween_is_initted
/// @param {Tween} tween The tween instance
/// @returns {bool} If the tween has been initialized
function tween_is_initted(argument0) {
	/**
	 * Returns true if a given tween is initted. A tween is considered initted, 
	 * when all the variables and current values are captured from the target instance.
	 * The values for a tween are captured on the very first step that the tween is
	 * rendered. For example, if you create a tween with `delay` of `10`, the tween
	 * will be initialized on the very first frame after the 10 seconds delay. 
	 * `tween_from` tweens are initialized on the same frame that are created. 
	 * 
	 * Normally, you don't use this value for anything. Only for advanced debug purposes.
	 */
 
	return argument0[TLTWEEN.INITTED];


}

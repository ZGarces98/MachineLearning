/// @function anim_destroy(anim);
/// @param {Animation} anim The tween or tweenline instance 
/// @description Destroys the passed Animation instance
/// @returns {undefined} It allways return undefined. Check the example for more info about why is this.
function anim_destroy(argument0) {
	/**
	 * @example
	 * // To free the memory you need to call it like this:
	 * my_tween = anim_destroy(anim);
	 * // Otherwise, the tween or tweenline will be destroyed, 
	 * // but it would not be garbage collected by GameMaker.
	 */
 

	if (global._tw_current_creation_tl == argument0) {
		global._tw_current_creation_tl = undefined; 	
	}
	__tl_private_anim_kill(argument0, true);
	return undefined;


}

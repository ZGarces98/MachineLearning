/// __tl_private_anim_uncache(anim, include_self);
/// @param anim
/// @param include_self
function __tl_private_anim_uncache(argument0, argument1) {
	/**
	 * @private
	 * Uncache the current animation duration and totalduration and all of his parents
	 *
	 */
 
	var _a = argument1 ? argument0 : argument0[TLANIM.PARENT]; 

	while (_a != undefined) {
		_a[@ TLANIM.DURATION] = undefined; 
		_a[@ TLANIM.TOTALDURATION] = undefined; 
		_a = _a[TLANIM.PARENT];
	}




}

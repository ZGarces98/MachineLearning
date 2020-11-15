/// @description 
/// @function anim_oncomplete(anim)
/// @param {Animation} anim The tween or tweenline
/// @returns {boolean} true in the single step when the anim performs the `"oncomplete"` event. 
function anim_oncomplete(argument0) {
	/**
	 * Returns true in the single step when the anim performs the `"oncomplete"` event. 
	 */

	var event = argument0[TLANIM.ONCOMPLETE];
	return (event[TLEVENT.TYPE] == TLEVENTTYPE.LAZY && event[TLEVENT.LISTENER] == true);





}

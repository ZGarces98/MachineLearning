/// @description 
/// @function anim_onrepeat(anim)
/// @param {Animation} anim The tween or tweenline
/// @returns {boolean} true in the single step when the anim performs the `"onrepeat"` event. 
function anim_onrepeat(argument0) {
	/**
	 * Returns true in the single step when the anim performs the `"onrepeat"` event. 
	 */

	var event = argument0[TLANIM.ONREPEAT];
	return (event[TLEVENT.TYPE] == TLEVENTTYPE.LAZY && event[TLEVENT.LISTENER] == true);





}

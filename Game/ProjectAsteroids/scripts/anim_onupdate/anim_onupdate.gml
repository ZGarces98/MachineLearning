/// @description 
/// @function anim_onupdate(anim)
/// @param {Animation} anim The tween or tweenline
/// @returns {boolean} true in the single step when the anim performs the `"onupdate"` event. 
function anim_onupdate(argument0) {
	/**
	 * Returns true in the single step when the anim performs the `"onupdate"` event. 
	 */

	var event = argument0[TLANIM.ONUPDATE];
	return (event[TLEVENT.TYPE] == TLEVENTTYPE.LAZY && event[TLEVENT.LISTENER] == true);





}

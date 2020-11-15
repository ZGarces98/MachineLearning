/// @description 
/// @function anim_onstart(anim)
/// @param {Animation} anim The tween or tweenline
/// @returns {boolean} true in the single step when the anim performs the `"onstart"` event. 
function anim_onstart(argument0) {
	/**
	 * Returns true in the single step when the anim performs the `"onstart"` event. 
	 */

	var event = argument0[TLANIM.ONSTART];
	return (event[TLEVENT.TYPE] == TLEVENTTYPE.LAZY && event[TLEVENT.LISTENER] == true);





}

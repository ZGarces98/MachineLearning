/// @description 
/// @function anim_onreversecomplete(anim)
/// @param {Animation} anim The tween or tweenline
/// @returns {boolean} true in the single step when the anim performs the `"onreversecomplete"` event. 
function anim_onreversecomplete(argument0) {
	/**
	 * Returns true in the single step when the anim performs the `"onreversecomplete"` event. 
	 */

	var event = argument0[TLANIM.ONREVERSECOMPLETE];
	return (event[TLEVENT.TYPE] == TLEVENTTYPE.LAZY && event[TLEVENT.LISTENER] == true);




}

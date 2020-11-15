/// @description tween_system_set_useframes( bool );
/// @function tween_system_set_useframes( bool );
/// @param {bool} bool Use frames?
function tween_system_set_useframes(argument0) {
	/**
	 * Determines the default time unit measure to use when creating new tweens or 
	 * tweenlines. If true, the newly created tweens or tweenlines will use frames 
	 * as default time unit. If false (the default), they will use seconds. 
	 */

	global._tw_default_useframes = argument0;


}

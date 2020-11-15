/// @description tween_system_lazy_events( enable )
/// @function tween_system_lazy_events
/// @param {boolean} enable If true, the lazy event system will be enabled
function tween_system_lazy_events(argument0) {
	/**
	 * Enable or disable the lazy events.
	 * The lazy events are a easy way to detect events without
	 * ussing extra scripts or extra events. 
	 * For an example of use of the lazy events check the documentation for the folder Animation/Lazy_events.
	 * 
	 * The lazy events can cause a bit of overhead. So, if you are not using it in your game, 
	 * you can disable it at the start of your game to gain a little bost.
	 *  
	 */


	global._tw_lazy_enabled = argument0;

	if (argument0 == false) {
	    __tl_private_lazy_reset();
	}



}

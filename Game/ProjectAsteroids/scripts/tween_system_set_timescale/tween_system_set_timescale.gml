/// @description  tween_system_set_timescale( speed );
/// @function  tween_system_set_timescale
/// @param {real} speed - The timescale of the global tweenline engine.
function tween_system_set_timescale(argument0) {
	/**
	 * Sets the **global** timescale of the tweenline engine. That is a factor that's 
	 * used to scale time in the animation where:
	 *
	 * - 1 = normal speed (the default), 
	 * - 0.5 = half speed, 
	 * - 2 = double speed, 
	 * - etc.
	 *       
	 */
 
	// Forces the system initialization
	if (global._tw_tl_SECONDS == undefined) {
		anim_destroy(__tl_private_anim_create(0));
	}

	anim_set_timescale(global._tw_tl_FRAMES, argument0);
	anim_set_timescale(global._tw_tl_SECONDS, argument0);



}

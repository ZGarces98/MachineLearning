/// @function tween_system_clear_all()
/// @description Clears all the tweens and Tweenlines on the system
function tween_system_clear_all() {

	tweenline_clear(global._tw_tl_FRAMES);
	tweenline_clear(global._tw_tl_SECONDS);


}

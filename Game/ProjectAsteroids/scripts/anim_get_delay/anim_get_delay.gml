/// @function anim_get_delay(anim);
/// @param {Animation} anim The animation
/// @returns {real} The Animation's delay
function anim_get_delay(argument0) {
	/**
	 * Gets the animation's initial delay which is the length of time in seconds 
	 * (or frames for frames-based tweens) before the animation should begin. 
	 * A tween's starting values are not recorded until after the delay has 
	 * expired (except in from() tweens which render immediately by default).
	 * An animation's delay is unaffected by its timeScale, so if you were to 
	 * change timeScale from 1 to 10, for example, it wouldn't cause the delay
	 * to grow tenfold.
	 */ 

	return argument0[TLANIM.DELAY];




}

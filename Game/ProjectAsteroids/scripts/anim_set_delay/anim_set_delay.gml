/// anim_set_delay(anim, value); 
/// @param {Animation} anim The animation
/// @param {real} value The delay
function anim_set_delay(argument0, argument1) {
	/**
	 * Sets the animation's initial delay which is the length of time in seconds 
	 * (or frames for frames-based tweens) before the animation should begin. 
	 * A tween's starting values are not recorded until after the delay has 
	 * expired (except in from() tweens which render immediately by default).
	 * An animation's delay is unaffected by its timeScale, so if you were to 
	 * change timeScale from 1 to 10, for example, it wouldn't cause the delay
	 * to grow tenfold.
	 */ 

	var anim = argument0; 
	var value = argument1; 
	var parent = anim[TLANIM.PARENT]; 
	if (parent[TLTIMELINE.SMOOTHCHILDTIMING]) {
		anim_set_starttime(anim, anim[TLANIM.STARTTIME] + value - anim[TLANIM.DELAY] );
	}
	anim[@ TLANIM.DELAY] = value;




}

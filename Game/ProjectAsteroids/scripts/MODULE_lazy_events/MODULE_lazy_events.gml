function MODULE_lazy_events() {
	/**
	 *
	 * Lazy events are a way to create use events for your animations (Tweens, and tweenlines)
	 * without creating aditional scripts or GameMaker Events. They are easier to read and mantain.
	 *
	 *
	 *
	 * > Note: The event must be defined as "lazy" and 
	 * > {@linkcode tween_system_lazy_events tween_system_lazy_events(enable)} must be enabled to 
	 * > get lazy events to work. (It is enabled by default)
	 *     
	 *
	 * ## Example
	 *
	 * On the **create** event:
	 * ```
	 * // define a tween and declare the "oncomplete" event as a "lazy" event.
	 * tween = tween_to(id, 2, array("x", x + 200, "oncomplete", "lazy"));
	 * ``` 
	 *
	 * And in the **step** event:
	 *
	 * ```
	 * // when the tween performs the "oncomplete" event
	 * if (tween_oncomplete(tween)) {
	 *		//change the sprite colour to red
	 *		image_blend = c_red;
	 *		//and play a sound of a hit
	 *		audio_play_sound( sound_hit, 1, false);
	 * }
	 * ```
	 *
	 */


}

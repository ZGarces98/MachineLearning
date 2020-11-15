function MODULE_tweenlines() {
	/**
	 *     
	 * A tweenline is like a timeline with multiple tweens inside it. 
	 * You can create a tweenline and then append multiple tween inside this timeline. Then, you can play it 
	 * alltogether with a single function, and control it like a movie ({@linkcode anim_play}, 
	 * {@linkcode anim_pause}, {@linkcode anim_reverse}, etc). 
	 * This way, control multiple tweens to create complex animations is posible thanks to Tweenline Engine. 
	 * In Tweenline 2 you can also have nested Tweenlines (Tweenlines inside another tweenlines). This gives you the ability to create more
	 * complex animations.
	 * 
	 * 
	 * ## EXAMPLE:
	 *
	 * You have all your menu objects (buttons, logo, etc), but you need to create a complex menu animation sequence.
	 * 
	 * ```
	 * //create event obj_animation_controller
	 * tl = tweenline_create(); 
	 * tweenline_to(obj_button_start, 1.2, ["x", 140]);
	 * tweenline_to(obj_button_exit, 1.2, ["x", 250], "-=1"); // Note the extra last argument "-=1"
	 * tweenline_from(obj_game_logo, 3.2, ["x", room_width/2, "y",room_height/2, "scale",0]);
	 * ``` 
	 *
	 * With this code, we are creating a tweenline, and appending three tweens. 
	 * Normally the tweens are appended one after another, but you can pass as a last argument, the
	 * position of the tween. See tweenline_add to see all the posibilities you have with the position parameter.
	 * 
	 * Then, you can control this tweenline:
	 * 
	 * ```
	 * anim_pause(tl);
	 * anim_stop(tl);
	 * anim_reverse(tl);
	 * anim_set_speed(tl);
	 * // etc
	 * ```
	 *
	 *
	 * > NOTE: 
	 * > You cannot have a tweenline with some tweens measured in seconds and other tweens measured in frames (steps) 
	 * > because it's imposible to synchronize tweens with diferent measures of time.
	 * > So, when you add a tween to a tweenline the meassure type setted as default in tween_system_init is ussed.
	 * >  - If you set seconds as default, and you append a tween that uses frames as measure type, the time is converted to seconds ussing the current `room_speed`.
	 * >  - If you set frames as default, and you append a tween that uses seconds as measure type, the time is converted to frames ussing the current `room_speed`.
	 * > The original tween is moddified to use the default measure type, so be careful. 
	 *
	 *
	 */


}

function MODULE_Animation() {
	/**
	 * `Animation` is the base class (type) for both the `Tweens`, and `Tweenlines`. 
	 * It has the necesary functions to play, pause, and control the state of the animation.
	 * Also, it has the majority of setters and getters functions.
	 *
	 * You **can't** create an Animation instance. You need to use one of the following 
	 * functions to create an instance of the `Tween` or `Tweenline` subclasses. 
	 *
	 * The following functions return an instance of the `Tween` subclass:
	 * - {@linkcode tween_to}, {@linkcode tween_from}, {@linkcode tween_fromto}
	 * - {@linkcode tweenline_to}, {@linkcode tweenline_from}, {@linkcode tweenline_fromto}
	 * - {@linkcode tween_set}
	 *
	 * The following functions all return an **array** of tweens: 
	 * - {@linkcode tween_stagger_from}, {@linkcode tween_stagger_to}, {@linkcode tween_stagger_fromto}
	 * - {@linkcode tweenline_stagger_from}, {@linkcode tweenline_stagger_to}, {@linkcode tweenline_stagger_fromto}
	 * 
	 * The function {@linkcode tweenline_create}, returns an instance of the `Twenline` subclass.
	 *
	 *
	 * # Example
	 * 
	 * First create any tween or tweenline. For example, to create a simple tween:
	 *
	 * ```
	 * tween = tween_to(obj_player, 10, ["x", 100]);
	 * ```
	 * 
	 * Then, you can use the Animation `anim_*` functions to control your tween (or tweenline) instance:
	 *
	 * ```
	 * anim_pause(tween);
	 * ```
	 * 
	 * Some functions are specific to the `Tween` or `Tweenline` subclasses. So, you need to use
	 * the `tween_*` or `tweenline_*` functions in that case. 
	 *
	 *
	 * What is the VARS array?
	 * =======================
	 *
	 * The VARS Array is a special array defining the starting value for each variable that should 
	 * be tweened (SETTERS) as well as any  special properties like "yoyo", "repeat", "ease", etc. (special VARS).
	 * For example, to tween the `obj_enemy` from the current position to  `x = 100` and `y = 200` 
	 * with a bouncy easing effect and a duration of 1 second, you can use this this: 
	 * 
	 * ```
	 * tweenline_to( obj_enemy, 1, ["x",100, "y",200, "ease", ease_bounceout]); 
	 * ```
	 *
	 * As you can see, the vars array has the folowing syntax: 
	 *
	 * ```
	 * [
	 *     "SETTER_name", value,
	 *     "other_SETTER", value,
	 *     "etc_SETTER", value,
	 *     "special_VARS_name", value
	 * ]
	 * ```
	 *
	 * Line breaks are only for visualization purposes. You can write the entire array in one line.
	 * You can mix SETTERS names and special VARS names. 
	 *
	 * Other example: tween obj_player's alpha to zero while stretching in both x and y. 
	 * 
	 * ```
	 * tweenline_to( obj_player, 2.5, ["xscale",1.2, "yscale",2, "alpha", 0]);
	 * ```
	 *
	 *
	 * Special VARS: Animation Behavior
	 * ============================
	 *     
	 * Below is a full list of special properties you can specify on vars argument.
	 * Note that **all** special properties and events properties are available to 
	 * **both** Tweens and Tweenlines, except the `"ease"` property that are available 
	 * only for Tweens.
	 *
	 *             
	 * - `"ease"` [script]
	 *   You can choose from various eases to control the rate of change during the animation, giving it a 
	 *   specific "feel". For example, ease_elasticout or ease_stronginout. 
	 *   For best performance, use one of the Tweenline eases included in the "ease" folder with this extension.
	 *   For linear animation, use the Tweenline ease_linear ease. 
	 *   The default ease is ease_quadout. (You can always change the default easing script with 
	 *   the tween_system_set_default_ease(ease) function)
	 *     
	 * - `"paused"` [Boolean]
	 *   If true, the tween will pause itself immediately upon creation.
	 *     
	 * - `"useframes"` [Boolean]
	 *   If var_useframes is true, the tweens's timing will be based on frames instead of seconds. This causes both its 
	 *   duration and delay to be based on frames. An animations's timing mode is always determined by its parent timeline.    
	 *         
	 * - `"repeat"` [Integer]
	 *   Number of times that the animation should repeat after its first iteration. For example, if `"repeat"` is `1`, the 
	 *   animation will play a total of twice (the initial play plus 1 repeat). To repeat indefinitely, use `-1`. `"repeat"` 
	 *   should always be an integer.
	 *         
	 * - `"repeatdelay"` [Real] 
	 *   Amount of time in seconds (or frames for frames-based tweens) between repeats. For example, if `"repeat"` is `2` and 
	 *   `"repeatdelay"` is `1`, the animation will play initially, then wait for 1 second before it repeats, then play 
	 *   again, then wait 1 second again before doing its final repeat.
	 *         
	 * - `"yoyo"` [Boolean]
	 *   If `true`, every other repeat cycle will run in the opposite direction so that the tween appears to go back and 
	 *   forth (forward then backward).
	 *   So if repeat is 2 and yoyo isfalse, it will look like:
	 *   ```
	 *   start - 1 - 2 - 3 - 1 - 2 - 3 - 1 - 2 - 3 - end. 
	 *   ```
	 *   But if yoyo is true, it will look like: 
	 *   ```
	 *   start - 1 - 2 - 3 - 3 - 2 - 1 - 1 - 2 - 3 - end.
	 *   ```
	 *             
	 * - `"patrol"` [Boolean]
	 *   Patrol it's a shorhand way of set `"repeat"` to `-1` and `"yoyo"` to `true`. If `true`, every other repeat cycle
	 *   will run in the opposite direction so that the tween appears to go back and 
	 *   forth indefinitely (forward then backward). 
	 *         
	 * - `"loop"` [Boolean] 
	 *   If `true`, it has the same effect as set `"repeat"` to `-1`. The Tween or Tweenline will loop indefinitely.
	 * 
	 * - `"persistent"` [Boolean]
	 *	 If you set any Tween or Tweenline as persistent, it will **NOT** be cleared when the room changes. It is useful
	 *   When you are making an animation with instances that are persistent. You can learn more about persistent instances 
	 *   on the [GameMaker Studio manual page](https://docs.yoyogames.com/source/dadiospice/002_reference/objects%20and%20instances/instances/instance%20properties/persistent.html).
	 *     
	 *
	 * Animation events
	 * ==========================
	 *     
	 * Below is a full list of special properties you can specify on vars argument to define events for the Tweens or Tweenlines animations. 
	 *
	 * ```
	 * // Executes scr_myscript("param1", "param2") when the tween completes. 
	 * tween_to(id, 2, ["oncomplete", scr_myscript, "oncompleteparams", ["param1", "param2"]]);
	 * ```
	 *
	 * To self-reference the id of the tween instance itself in one of the parameters, use "{self}", like: 
	 *
	 * ```
	 * // Executes scr_myscript(<the Tween instance here>, "param2") on each step of the tween
	 * tween_to(id, 2, array("onupdate", scr_myscript, "onupdateparams", ["{self}", "param2"]]);
	 * ```
	 *
	 * If you pass a non array type of argument, the value will be passed as a single argument for the script:
	 *
	 * ```
	 * // Executes scr_myscript(my_only_argument) when the tween starts
	 * tween_to(id, 2, ["onstart", scr_myscript, "onstartparams", my_only_argument ]);
	 * ```
	 * If you use the special string `"user0"` to `"user15"` in one callback event, then, the correspondient [User Defined Event](https://docs.yoyogames.com/source/dadiospice/000_using%20gamemaker/events/other%20event.html) will be fired instead.
	 *
	 * ```
	 * // Fires the "Event user 2" when the tweens completes
	 * tween_to(id, 2, ["oncomplete", "user2" ]);
	 * ```
	 * If you use the special string `"lazy"` in one callback event, then, the Animation event will be marked as a Lazy event. You can learn about Lazy events on the **animation/lazy_events** folder.
	 *
	 * ```
	 * // Mark the "oncomplete" event of the tween as a lazy event (This code is, for example, on the create event)
	 * tween = tween_to(id, 2, ["oncomplete", "lazy" ]);
	 *
	 * // Then on the STEP event you can do:
	 * if (tween_oncomplete(tween)) {
	 *     // your "oncomplete" code goes here.
	 *     show_debug_message("The tween is complete");
	 * }
	 * ```
	 *
	 * - `"oncomplete"` [Callback Script]
	 *   A script that should be called when the timeline has completed.
	 *
	 * - `"onreversecomplete"` [Callback Script]
	 *   A function that should be called when the Tween/Tweenline has reached its beginning 
	 *   again from the reverse direction. For example, if `anim_reverse()`
	 *   is called, the Tween timeline will move back towards its beginning and when its time 
	 *   reaches 0, the passed script to `"onreversecomplete"` will be called. This can also happen if 
	 *   the timeline is placed in a Tweenline timeline that gets reversed and plays the 
	 *   timeline backwards to (or past) the beginning.
	 *
	 * - `"onupdate"` [Callback Script]
	 *   A script that should be called every time the Tween/Tweenline updates (on every 
	 *   frame while the timeline is active)
	 *
	 * - `"onstart"` [Callback Script]
	 *   A script that should be called when the Tween/Tweenline begins (when its time 
	 *   changes from 0 to some other value which can happen more than once if 
	 *   the timeline is restarted multiple times).
	 *
	 * - `"onrepeat"` [Callback Script]
	 *   A function that should be called each time the Tween/Tweenline repeats.
	 *
	 * - `"onreversecompleteparams"` [Array for multiple arguments, other value type for only one argument]
	 *   An Array of parameters to pass the "onreversecomplete" script.
	 *
	 * - `"onupdateparams"` [Array for multiple arguments, other value type for only one argument]
	 *   An Array of parameters to pass the "onupdate" script.
	 *
	 * - `"oncompleteparams"` [Array for multiple arguments, other value type for only one argument]
	 *   An Array of parameters to pass the "oncomplete" script.
	 *
	 * - `"onstartparms"` [Array for multiple arguments, other value type for only one argument]
	 *   An Array of parameters to pass the "onstart" script.
	 *
	 * - `"onrepeatparms"` [Array for multiple arguments, other value type for only one argument]
	 *   An Array of parameters to pass the "onrepeat" script.
	 *       
	 *
	 */


}

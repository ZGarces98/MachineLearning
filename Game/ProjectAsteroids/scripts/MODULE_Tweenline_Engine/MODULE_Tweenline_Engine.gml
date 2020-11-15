function MODULE_Tweenline_Engine() {
	/**
	 * # Getting Started
	 * 
	 * ## Setup Tweenline
	 * 
	 * You can download the Tweenline Animation Engine from the Game Maker Studio Marketplace. 
	 * Once you have adquired Tweenline from the marketplace, you only need to do the following:
	 * 
	 * To view the demo files: 
	 *
	 * 	1. Import ALL the files into a NEW project
	 * 	2. Press the "Play" button in GameMaker Studio 2.
	 * 	
	 * To Import the basic tweenline2 SDK extension into your project:
	 *
	 * 	1. Open your existig project or create a new empty project
	 * 	2. Import the Following folders:
	 * 		- scrips/tweenline
	 * 		- objects/tweenline
	 * 	3. If you want to use the advanced visual debugging features, you can also import:
	 * 		- scripts/tweenline_debug
	 *
	 * Enjoy!
	 *
	 * ## Your First Tween
	 *
	 * A tween is an Animation (interpolation of values) of one or more variables of an instance during a period of time.
	 * To create your first Tween, add the following code to the creation event of an object, 
	 * and place it in an empty room.  This will tween the `x` variable of the current object 
	 * from the current value to the value `300` in `2` seconds and then, stop.
	 * 
	 * ```
	 * tween_to(id, 2, ["x", 300]);
	 * ```
	 *
	 * Congratulations! You have created your first Tween animation. 
	 *
	 * ## Multiple variables
	 *
	 * You can also, animate multiple variables using the same tween: 
	 *
	 * ```
	 * tween_to(obj_box, 5, ["x", x + 200, "y", y + 300, "image_angle", 90]);
	 * ```
	 * 
	 * ## Variable Aliases
	 *
	 * Some of the most used variables, like `image_angle`, `image_xscale`, `image_blend`, etc have 
	 * aliases like `"angle"`, `"xscale"` and `"blend"`. To check the full list of aliases, check {@linkcode tween_system_add_alias} script.
	 * So, you can rewrite the last tween like this: 
	 *
	 * ```
	 * tween_to(obj_foo, 5, ["x", x + 200, "y", y + 300, "angle", 90]);
	 * ```
	 *
	 * ## Control an Animation
	 *
	 * You can save a reference to the tween in a variable, and then use all the `anim_*` functions, to
	 * control the tween: 
	 *
	 * ```
	 * my_tween = tween_to(id, 2.5, ["blend", c_red]); // Blend to red in 2.5 seconds.
	 * // Then you can play, pause, seek, reverse, timescale, and more!
	 * anim_pause(my_tween);
	 * anim_play(my_tween);
	 * anim_seek(my_tween, 1.2);
	 * anim_reverse(my_tween);
	 * anim_set_timescale(my_tween, 0.5);
	 * ```
	 *
	 * Check all the functions inside the Animation folder for more.
	 *
	 * ## tween_from, tween_to and tween_fromto
	 *
	 * Currently, you are tweening your variables from the current value to a final value that you pass to the {@linkcode tween_to} function. 
	 * If you want to do the oposite (from one value you pass, to the current variables values), you can use {@linkcode tween_from]:
	 *
	 * ```
	 * x = 200; 
	 * tween_from(id, 2, ["x", 100]); // Will tween from the passed value (x=100) to the actual value (x=200)
	 * ```
	 *
	 * Also, you can use {@linkcode tween_fromto} to define the starting and ending values:
	 *
	 * ```
	 * tween_fromto(id, 2, ["x", 100], ["x", 200, "angle", 90]); //from x=100 to x=200 and image_angle=90
	 * ```
	 *
	 * ## The VARS array
	 *
	 * The array you are passing to the {@linkcode tween_to}, {@linkcode tween_from} and {@linkcode tween_fromto} is called `VARS` array.
	 * You will find references to this array across all the documentation. You can pass special VARS in this array. 
	 * to control the behavior of the animation itself. For example:
	 * 
	 * ``` 
	 * tween_to(id, 2, ["alpha", 100, "ease", ease_elastincin, "patrol", true]);
	 * ```
	 * 
	 * Here, the `"ease"` and `"patrol"` are special VARS. The ease define the animation curve used to interpolate the values,
	 * and patrol means that the animation will repeat forever forwards and backwards. You can check all the special VARS you
	 * can use inside the `Animation` folder of this documentation. 
	 *
	 * ## Tweenlines vs Tweens
	 * 
	 * If you want to control multiple tweens at the same time with advanced timing functionality, 
	 * you can create a "Tweenline". A Tweenline is like timeline for Tweens. You can have inside any
	 * number of tweens or another nested tweenlines. They can be sequantial, overlaped, or however you
	 * want. Your creativity is your limit!
	 *
	 * Check the **Tweenline folder** for more info and examples.
	 *
	 * ## Animation
	 * 
	 * Both `Tweens` and `Tweenlines` **are** `Animations`. It means that you can pass a instance of a tweenline,
	 * or a tween to any `anim_*` function. 
	 *
	 * Below there is a description of the content of each Documentation Folder. 
	 *
	 * - **{@link Tween}: ** A component that can interpolate values from any variable of 
	 *   any object in real time to create animations.
	 * - **{@link Tweenline}: ** A timeline that can contain another Tweens or Tweenlines. 
	 *   They are used to create complex animations involving more than one Tween.
	 * - **{@link Animation}: ** Base class of both Tweens and Tweenlines. You can use these functions to control (play, 
	 *   pause, reverse, timescale, etc) and manage them in real time. (Tweens and Tweenlines ARE Animations)
	 * - **{@link Easing}: ** Contains all the built in easing functions that 
	 *   are integrated on Tweenline Engine.
	 * - **{@link System}: ** Global functions that affects all the Tweenline Engine global configuration. 
	 *   Also, it contains the required functions executed by the obj_tweenline
	 * - **{@link InstanceSelect}: ** Advanced functions to select instances acording to certain requirements.
	 *   They are commonly used with the `tween_stagger_*` functions, but they can by used 
	 *   separately from Tweenline Engine.
	 * 
	 * ## Contact
	 * 
	 * For questions/Bugs/support or to show me the game you are making 
	 * with Tweenline Animation Engine, please send me an email:
	 * 
	 * - Email: {@link mailto://jhm.ciberman@gmail.com|jhm.ciberman@gmail.com}
	 * - Twitter: {link https://twitter.com/cibermandesigns @cibermandesigns}
	 * - Web: {@link http://www.ciberman.net/}
	 *          
	 * **Enjoy!**
	 *
	 */


}

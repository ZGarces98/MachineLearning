function MODULE_easing() {
	/**
	 * 
	 * You can use a different easing just passing some `ease_*` script to 
	 * the "ease" VAR when you are creating your tween. For example, to use the
	 * `ease_bouncein` ease in your tween: 
	 * 
	 * ```
	 * tween_to(id, 1, array("x", x + 200, "ease", ease_bouncein)); 
	 * ```
	 * 
	 * Tweenline currently supports 35 different easing types. 
	 * 
	 * | IN              | OUT             | IN/OUT            |
	 * |:---------------:|:---------------:|:-----------------:|
	 * | ease_quadin     | ease_quadout    | ease_quadinout    |
	 * | ease_cubicin    | ease_cubicout   | ease_cubicinout   |   
	 * | ease_quartin    | ease_quartout   | ease_quartinout   |
	 * | ease_quintin    | ease_quintout   | ease_quintinou    |
	 * | ease_sinein     | ease_sineout    | ease_sineinout    |
	 * | ease_expoin     | ease_expoout    | ease_expoinout    |
	 * | ease_circin     | ease_circout    | ease_circinout    |
	 * | ease_bouncein   | ease_bounceout  | ease_bounceinout  |
	 * | ease_backin     | ease_backout    | ease_backinout    |
	 * | ease_powin      | ease_powout     | ease_powinout     |
	 * | ease_elasticin  | ease_elasticout | ease_elasticinout |
	 *     
	 * | OTHER           |
	 * |:---------------:|
	 * | ease_linear     |
	 * | ease_slowmotion |
	 * _______________________________________________________________
	 * 
	 *     
	 * # Easing modifiers
	 * 
	 * You can use modifiers on some eases to change their behaviour. 
	 * For example, you can change the `overshot` on the `ease_back` 
	 * to to create a more dramatic effect. 
	 * All the modifiers are real values. If you pass a **non real** 
	 * argument, the default value is used instaed. 
	 *  
	 * ## ease_back (in/out/inout) modifiers
	 * 
	 * ```
	 * tween_set_modifiers(tween_index, [overshot]);
	 * ```
	 * 
	 * **overshot:  [default = 1.70158]**
	 * 
	 * Overshoot affects the degree or strength of the overshoot.
	 * 
	 * ## ease_pow (in/out/inout) modifiers
	 * 
	 * ```
	 * tween_set_modifiers(tween_index, [power]);
	 * ```
	 * 
	 * **power:  [default = 6]**
	 * 
	 * Adjust which power() function will be used to calculate the tween.
	 * As big is the power modifier, more pronunced will be the easing.
	 * Try to use a small number, as this function has a big CPU overhead.
	 * If you want to use a number below 6, please use: (they are super optimized)
	 * 
	 *  - For `power = 1`, use `ease_linear` (no easing) 
	 *  - For `power = 2`, use `ease_quad` (in/out/inout)
	 *  - For `power = 3`, use `ease_cubic` (in/out/inout)
	 *  - For `power = 4`, use `ease_quart` (in/out/inout)
	 *  - For `power = 5`, use `ease_quint` (in/out/inout)
	 * 
	 * 
	 * ## ease_slowmotion modifiers
	 * 
	 * ```
	 * tween_set_modifiers(tween_index, [linearRatio, power, yoyoMode]);
	 * ```
	 * 
	 * **linearRatio: [default = 0.7]**
	 * 
	 * The proportion of the ease during which the rate of change will be linear (steady pace). 
	 * This should be a number between 0 and 1. For example, 0.5 would be half, so the first 25% of the ease 
	 * would be easing out (decelerating), then 50% would be linear, then the final 25% would be easing in 
	 * (accelerating). If you choose 0.8, that would mean 80% of the ease would be linear, leaving 10% on each
	 * end to ease. 
	 *          
	 * **power: [default = 0.7]**
	 * 
	 * The strength of the ease at each end. If you define a value above 1, it will actually reverse 
	 * the linear portion in the middle which can create interesting effects. 
	 *     
	 * **yoyoMode [default = false]**
	 * 
	 * If true, the ease will reach its destination value mid-tween and maintain it during the 
	 * entire linear mode and then go back to the original value at the end (like a yoyo of sorts). This
	 * can be very useful if, for example, you want the alpha (or some other property) of some text to
	 * fade at the front end of a SlowMo positional ease and then back down again at the end of that 
	 * positional SlowMo tween. Otherwise you would need to create separate tweens for the beginning 
	 * and ending fades that match up with that positional tween. 
	 *         
	 * 
	 */



}

/// @description  __tl_private_tween_create(target, duration) 
/// @function  __tl_private_new_tween
/// @param target
/// @param duration
function __tl_private_tween_create(argument0, argument1) {
	/**
	 * @private
	 * Creates an empty uninitialized non-functional tween.
	 */

	enum TLTWEEN { 
		RAWTARGET = TLANIM.__, // Extends TLANIM, (26)
		RAWVARS, // 27
		RAWFROMVARS, // 28
		FIRSTTARGET, // 29
		FIRSTSETTER, // 30
	    EASE, // 31
	    USEMODIFIERS, // 32
	    M, // modifiers (33)
		RUNBACKWARDS, // 34
		INITTED, // 35
		INMEDIATE_RENDER, // 36
		STARTAT, //37
	
	    __ 
	}



	var _t = __tl_private_anim_create(argument1); // Super method();
	_t[TLANIM.TYPE] = TLTYPE.TWEEN;

	_t[TLTWEEN.RAWTARGET] = argument0;
	_t[TLTWEEN.RAWVARS] = undefined;
	_t[TLTWEEN.RAWFROMVARS] = undefined;

	_t[TLTWEEN.FIRSTTARGET] = undefined;

	_t[TLTWEEN.EASE] = global._tw_default_ease;
	_t[TLTWEEN.USEMODIFIERS] = false;
	_t[TLTWEEN.M] = [];


	_t[TLTWEEN.INITTED] = false; 
	_t[TLTWEEN.INMEDIATE_RENDER] = false; 

	_t[TLTWEEN.FIRSTSETTER] = undefined;

	_t[TLTWEEN.STARTAT] = undefined;

	_t[TLTWEEN.RUNBACKWARDS] = false; // for tween_from() tweens


	return _t;





}

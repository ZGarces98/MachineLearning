/// @function __tl_private_setter_create(target, property, value, next);
/// @param target
/// @param property
/// @param value
/// @param next
function __tl_private_setter_create(argument0, argument1, argument2, argument3) {

	enum TLSETTER {
		TARGET = 0,
		PROP, 
		START,  
		CHANGE, 
		IS_COLOR, 
		NEXT,
		PREV,
	}

	var _s;
	var target = argument0;
	var prop = argument1;
	var value = argument2;
	var next = argument3;
	var start = __tl_private_setter_capture(target, prop); 

	_s[TLSETTER.TARGET] = target;
	_s[TLSETTER.PROP] = prop;
	_s[TLSETTER.IS_COLOR] = __tl_private_var_is_color(prop);
	_s[TLSETTER.NEXT] = next;
	_s[TLSETTER.PREV] = undefined;
	_s[TLSETTER.START] = start;
	_s[TLSETTER.CHANGE] = value - start;

	if (next != undefined) {
		next[@ TLSETTER.PREV] = _s;
	}
	return _s;


}

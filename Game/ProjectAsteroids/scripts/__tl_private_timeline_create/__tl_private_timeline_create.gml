/// __tl_private_timeline_create(vars_array);
function __tl_private_timeline_create() {
	/**
	 * @private
	 * Creates a new Timeline
	 */

	enum TLTIMELINE { 
		FIRST = TLANIM.__,// Extends TLANIM (21
		LAST, //22
	    LABELS, //23
	    LABELS_LIST, //23
		SMOOTHCHILDTIMING, //24
	    INMEDIATERENDER, //25
		AUTOREMOVECHILDREN,
		SORTCHILDREN,
		__
	}


	var _tl = __tl_private_anim_create(0); //Super method
	_tl[TLANIM.TYPE] = TLTYPE.TIMELINE;

	// First Animation in render list
	_tl[TLTIMELINE.FIRST] = undefined;

	// last Animation in render list
	_tl[TLTIMELINE.LAST] = undefined;

	// map of labels (key: "labelName", value: time)
	_tl[TLTIMELINE.LABELS] = ds_map_create();

	// list of labels (value: "labelName")
	_tl[TLTIMELINE.LABELS_LIST] = ds_list_create();

	// Sets inmediate render of the tweenline (useful for most cases)
	_tl[TLTIMELINE.INMEDIATERENDER] = true;

	// Smooth child timing 
	_tl[TLTIMELINE.SMOOTHCHILDTIMING] = true;

	// Auto remove children
	_tl[TLTIMELINE.AUTOREMOVECHILDREN] = true;

	// Auto remove children
	_tl[TLTIMELINE.SORTCHILDREN] = true;

	// Set the edit mode to the current tweenline
	global._tw_current_creation_tl = _tl;


	// loop all the array indexes
	if (argument_count > 0) {
		var varsarray = argument[0];
		var _size = array_length_1d(varsarray) - 1;
		for (var i = 0; i < _size; i++) { 
			// For more info, see __tl_private_tween_create(); 
		    var prop   = varsarray[i++];
		    var value  = varsarray[i];

			// if it is not a reserved property name 
			if (!__tl_private_anim_prop_apply(_tl, prop, value)) {
				__tl_private_error(_tl, "Unknown property " + string(prop) + " with value " + string(value));
			}	
		}
	}
	return _tl;


}

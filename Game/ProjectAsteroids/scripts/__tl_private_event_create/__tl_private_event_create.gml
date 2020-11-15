/// @function event_create()
/// @returns {Event} The newly created event
function __tl_private_event_create() {
	/**
	 * Creates a new event and returns it.
	 */
 
	enum TLEVENT {
		TARGET = 0,
		LISTENER,
		PARAMS,
		TYPE,
	}

	// Listener propery:
	// If type == script
	//		listener = The callback script
	// If type == user
	//		listener = The event_user number (integer)
	// If type == lazy
	//		listener = True if the event must be performed in that step, false otherwise. 

	enum TLEVENTTYPE {
		NONE = 0,
		SCRIPT, 
		USER, 
		LAZY
	}

	var e;
	e[TLEVENT.TARGET] = noone;
	e[TLEVENT.LISTENER] = undefined;
	e[TLEVENT.PARAMS] = [];
	e[TLEVENT.TYPE] = TLEVENTTYPE.NONE;
	return e;


}

///@desc __tl_private_anim_create(duration);
///@param duration 
function __tl_private_anim_create(argument0) {
	/**
	 * @private
	 * Creates a new Anim
	 *
	 */


	enum TLANIM {
	    TYPE, //0
		NEXT, //1
		PREV, //2
		TIMESCALE, //3
		REVERSED, //4
		STARTTIME, //5
		DELAY, // 6
		PAUSED, // 7
		PAUSETIME, // 8
		ACTIVE, // 9
		TIME, // 10
		TOTALTIME, // 11
		DURATION, // 12
		TOTALDURATION, // 13
		PARENT, // 14
		REPEAT, // 15
		YOYO, // 16
		CYCLE, // 17
		REPEATDELAY, // 18
		GC, // 19
		DEBUGARGS, //Used by tween_get_string (20)
		PERSISTENT,
	
		// Events
		ONCOMPLETE, // 21
		ONREPEAT, // 22
		ONREVERSECOMPLETE, //23
		ONSTART, // 24
		ONUPDATE, // 25
		// ONOVERWRITE //not implemented, maybe in a future
	
		__,
	}

	enum TLTYPE {
		ANIM = 0,
		TWEEN,
		TIMELINE
	}

	var _a;

	// Animation Class Type
	_a[TLANIM.TYPE] = TLTYPE.ANIM;

	// Next Animation in render list
	_a[TLANIM.NEXT] = undefined;

	// Previous animation in render list
	_a[TLANIM.PREV] = undefined;

	// Timescale
	_a[TLANIM.TIMESCALE] = 1;

	// Is reversed?
	_a[TLANIM.REVERSED] = false;

	// Starting time
	_a[TLANIM.STARTTIME] = 0;

	// Delay
	_a[TLANIM.DELAY] = 0;

	// Is playing?
	_a[TLANIM.PAUSED] = false;

	// The time the Animation was paused
	_a[TLANIM.PAUSETIME] = 0;

	// Is active? (https://greensock.com/docs/Core/Animation/isActive())
	_a[TLANIM.ACTIVE] = false;

	// Time in seconds (or frames) of the virtual playhead
	_a[TLANIM.TIME] = 0;

	// Total time in seconds (or frames) of the virtual playhead including repeats or repeatsDelays
	_a[TLANIM.TOTALTIME] = 0;

	// Duration
	_a[TLANIM.DURATION] = argument0; 

	// Total duration including repeats or repeats delays
	_a[TLANIM.TOTALDURATION] = argument0; 

	// Repeat
	_a[TLANIM.REPEAT] = 0; 

	// Yoyo
	_a[TLANIM.YOYO] = false; 

	// Cycle
	_a[TLANIM.CYCLE] = 0; 

	// Repeat Delay
	_a[TLANIM.REPEATDELAY] = 0;

	// Was Garbage Collected? (or destroyed by the user)
	_a[TLANIM.GC] = false;

	// Used only by tween_get_string()
	_a[TLANIM.DEBUGARGS] = undefined;

	// Is this anim persistent?
	_a[TLANIM.PERSISTENT] = false;

	// Create events
	_a[TLANIM.ONCOMPLETE] = __tl_private_event_create();
	_a[TLANIM.ONREPEAT] = __tl_private_event_create();
	_a[TLANIM.ONREVERSECOMPLETE] = __tl_private_event_create();
	_a[TLANIM.ONSTART] = __tl_private_event_create();
	_a[TLANIM.ONUPDATE] = __tl_private_event_create();

	// Parent
	_a[TLANIM.PARENT] = undefined;

	// Create the root timelines if not created
	if (global._tw_tl_FRAMES == undefined) {
		if (global._tw_TIME == -1) {
			global._tw_TIME = 0;
			global._tw_FRAMES = 0;
			global._tw_tl_SECONDS = __tl_private_timeline_create();
			global._tw_tl_FRAMES = __tl_private_timeline_create();
		} else {
			return _a;
		}
	} 

	_a[TLANIM.PARENT] = global._tw_default_useframes ? global._tw_tl_FRAMES : global._tw_tl_SECONDS; 

	// Force the creation of obj_tweenline
	tween_system_get_singleton();

	return _a;


}

/// __al_private_anim_render(anim, time);
/// @param anim 
/// @param time
function __tl_private_anim_render(argument0, argument1) {
	/**
	 * @private
	 * Render the animation
	 */

	var _a = argument0;
	var time = argument1;
	var isComplete = false;
	var prevTime = _a[TLANIM.TIME];
	var prevCycle = _a[TLANIM.CYCLE];
	var callbackToPerform = undefined;

	// anim_get_totalduration Forces the recalculation of total duration
	if (time >= anim_get_totalduration(_a)) {
		_a[@ TLANIM.TOTALTIME] = _a[TLANIM.TOTALDURATION];
	
		if (_a[TLANIM.YOYO] && (_a[TLANIM.CYCLE] mod 2) == 1) {
			_a[@ TLANIM.TIME] = 0;

		} else {
			_a[@ TLANIM.TIME] = _a[TLANIM.DURATION];
		}
	
		callbackToPerform = _a[TLANIM.ONCOMPLETE];
	
		if (!_a[TLANIM.REVERSED]) {
			isComplete = true;
		}
	
		// TODO: add HERE the code to support events for zero duration tweens
	
	} else if (time <= 0) {
		_a[@ TLANIM.TIME] = 0;
		_a[@ TLANIM.TOTALTIME] = 0;
	
		callbackToPerform = _a[TLANIM.ONREVERSECOMPLETE];

		if (time < 0) {
			_a[@ TLANIM.ACTIVE] = false;
		} 
		if (_a[TLANIM.REVERSED]) {
			isComplete = true;
		} else {
			if (_a[TLANIM.REPEAT] > 0) {
				_a[@ TLANIM.CYCLE]++;
			}
		}
	} else {
		_a[@ TLANIM.TOTALTIME] = time;
		_a[@ TLANIM.TIME] = time;

		if (_a[TLANIM.REPEAT] != 0) {
			var cycleDuration = _a[TLANIM.DURATION] + _a[TLANIM.REPEATDELAY];
			_a[@ TLANIM.CYCLE] = floor(_a[TLANIM.TOTALTIME] / cycleDuration);
		
		
			if ((_a[TLANIM.CYCLE] != 0) && (_a[TLANIM.CYCLE] == _a[TLANIM.TOTALTIME] / cycleDuration)) {
				//otherwise when rendered exactly at the end time, it will act as though it is repeating (at the beginning)
				_a[@ TLANIM.CYCLE]--; 
			}
		
			// Calculate the new time
			_a[@ TLANIM.TIME] = _a[TLANIM.TOTALTIME] - (_a[TLANIM.CYCLE] * cycleDuration);
		
			if (_a[TLANIM.YOYO] && (_a[TLANIM.CYCLE] mod 2) != 0) {
				_a[@ TLANIM.TIME] = _a[TLANIM.DURATION] - _a[TLANIM.TIME];
			}
		
			if (_a[TLANIM.TIME] > _a[TLANIM.DURATION]) {
				_a[@ TLANIM.TIME] = _a[TLANIM.DURATION];
			} else if (_a[TLANIM.TIME] < 0) {
				_a[@ TLANIM.TIME] = 0;
			}
		}
	
	}

	if (_a[TLANIM.TYPE] == TLTYPE.TWEEN) {
		__tl_private_tween_render(_a, prevTime);	
	} else {
		__tl_private_timeline_render(_a, prevTime);
	}

	// >> START Event dispatching 

	if (prevTime == 0 && _a[TLANIM.TIME] != 0) {
		__tl_private_event_perform(_a[TLANIM.ONSTART]);
	}
	if (!_a[TLANIM.GC]) {
		__tl_private_event_perform(_a[TLANIM.ONUPDATE]);
	}
	if (prevCycle != _a[TLANIM.CYCLE] && !_a[TLANIM.GC]) {
		__tl_private_event_perform(_a[TLANIM.ONREPEAT]);
	}
	if (isComplete && !_a[TLANIM.GC]) {
		__tl_private_event_perform(callbackToPerform);
		__tl_private_anim_kill(_a);
	}
	// >> End event dispatching


}

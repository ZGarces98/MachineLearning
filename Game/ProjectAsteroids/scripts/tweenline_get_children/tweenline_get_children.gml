/// @description  tweenline_get_children(tweenline, nested, include_tweens, include_timelines);
/// @function tweenline_get_children
/// @param {Tweenline} tweenline - The Tweenline to count get the nested childrens
/// @param {boolean} [nested=false] - Include nested Animations recursively
/// @param {boolean} [include_tweens=true] - Include tweens
/// @param {boolean} [include_timelines=true] - Include Timelines (Tweenlines)
/// @returns {Array of Animations} An array of animations that are children of the passed tweenline instance
function tweenline_get_children() {
	/**
	 * Returns an array of animations that are children of the passed tweenline instance.
	 */
	var _t = argument[0];
	var nested = argument_count > 1 ? argument[1] : false;
	var include_tweens = argument_count > 2 ? argument[2] : true;
	var include_timelines = argument_count > 3 ? argument[3] : true;

	var arr = [], ind = 0;
	var _a = _t[TLTIMELINE.FIRST];
	while (_a != undefined) {
		switch (_a[TLANIM.TYPE]) {
			case TLTYPE.TWEEN:
				if (include_tweens) {
					arr[ind++] = _a;
				}
				break;
			case TLTYPE.TIMELINE:
				if (include_timelines) {
					arr[ind++] = _a;
				}
				if (nested) {
					var arr2 = tweenline_get_children(_a, nested, include_tweens, include_timelines);
					var len = array_length_1d(arr2);
					array_copy(arr, ind, arr2, 0, len);
					ind += len;
				}
				break;
			default:
				__tl_private_error(_a, "tweenline_get_children ERROR: Unknown nested children. This should not happen. Please report it ");
				arr[ind++] = _a;
		
		}
	
		_a = _a[TLANIM.NEXT];
	}

	return arr;





}

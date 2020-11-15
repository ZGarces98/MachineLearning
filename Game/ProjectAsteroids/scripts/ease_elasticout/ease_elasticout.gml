/// @description ease_elasticout(progress)
/// @function ease_elasticout
/// @param {real} progress The easing progress from 0 to 1
/// @returns {real} The output normalized value
/// Do not call this script directly. For info about easings, refer to this folder documentation.
function ease_elasticout() {
	var t = 1-argument[0], ts=t*t, tc=ts*t;
	return 1-(33*tc*ts - 106*ts*ts + 126*tc - 67*ts + 15*t);






}

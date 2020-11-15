/// @description  ease_elasticin(progress)
/// @function  ease_elasticin
/// @param {real} progress The easing progress from 0 to 1
/// @returns {real} The output normalized value
/// Do not call this script directly. For info about easings, refer to this folder documentation.
function ease_elasticin() {
	var t = argument[0], ts=t*t, tc=ts*t;
	return (33*tc*ts -106*ts*ts + 126*tc -67*ts + 15*t);




}

/// @description  ease_elasticinout(progress)
/// @function  ease_elasticinout
/// @param {real} progress The easing progress from 0 to 1
/// @returns {real} The output normalized value
/// Do not call this script directly. For info about easings, refer to this folder documentation.
function ease_elasticinout() {
	var t = argument[0]+argument[0];
	if (t<1) { 
	    t=1-t;
	    var ts=t*t, tc=ts*t;
	    return 0.5-.5*(33*tc*ts -106*ts*ts + 126*tc -67*ts + 15*t); 
	}
	t--;
	var ts=t*t, tc=ts*t;
	return .5+.5*(33*tc*ts + -106*ts*ts + 126*tc + -67*ts + 15*t);


}

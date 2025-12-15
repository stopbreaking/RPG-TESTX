/// @function Approach(a, b, value)
/// @param {Real} a
/// @param {Real} b
/// @param {Real} value
/// @description Add or Subtract value from a without exceeding b.
function Approach(a, b, value) {
	if(a < b) 
	{
		return min(b, a + value);
	} else 
	{
		return max(b, a - value);
	}
}
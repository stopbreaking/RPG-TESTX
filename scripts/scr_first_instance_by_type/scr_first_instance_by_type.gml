///@function first_instance_by_type(_obj)
///@param {Asset.GMObject} _obj

///@description Returns the last instance found with the specified link_id.

function first_instance_by_type(_obj)
{
	with(_obj)
	{
		return self;
	}
}
///@function instance_by_name(_name)
///@param {String} _name
///@param {Asset.GMObject} _obj

///@description Returns the last instance found with the specified link_id.

function instance_by_name(_name)
{
	with(obj_has_id)
	{
		if(link_id == _name) return self;
	}
}
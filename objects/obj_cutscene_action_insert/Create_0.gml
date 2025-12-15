/// @description Okay this is a wacky fix..

// To summarize, the textboxes are queued up with tickets, which is cool,
// but switching aspects of the camera and portraits works better with queueing 'Actions'
// To queue an action, I will probably finagle and mangle this code to true spaghetti.
// Sounds good? Let's go.

ticket = 1;
if(instance_exists(obj_cutscene_action_queued))
{
	with(obj_cutscene_action_queued) {
		ticket ++;
	}
}
instance_change(obj_cutscene_action_queued, false);
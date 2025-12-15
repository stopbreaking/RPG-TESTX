textbox = -1;

x_animator = noone;
y_animator = noone;

x_pad = -1;
y_pad = -1;

function init(){
	x_animator = animate_value_doublelerp_continuous(setx2, self, get_x, [self], wrapper_add, [get_x, [textbox], x_pad], ease);
	y_animator = animate_value_doublelerp_continuous(sety2, self, get_y, [self], wrapper_add, [get_y, [textbox], y_pad], ease);
}
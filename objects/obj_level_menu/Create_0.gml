escape_window = 
{
	x: 0.4*SCREEN_CENTER,
	y: 0.4*SCREEN_MIDDLE,
	width: 180,
	height: 440,
}

confirm_window = 
{
	x: SCREEN_CENTER/2,
	y: SCREEN_MIDDLE*2/5,
	width: 360,
	height: 180,
	open: false,
}

confirm_text = 
{
	x: 0.5 * SCREEN_CENTER + 60,
	y: 0.4 * SCREEN_MIDDLE + 30,
	text: "Quit level?",
	progress: 0,
	font: fnt_lvl_select,
}

confirm_prompt = 
{
	x: 0.5*SCREEN_CENTER + 60,
	y: 0.4*SCREEN_MIDDLE + 120,
	options: ["Yes", "No"],
	index: 0,
	c_default: c_white,
	c_highlight: c_yellow,
	spacing: 150,
	selection_marker: ">",
	blink_ticker: 2,
	blink_ticker_reset: 2,
	blink_visibility: true,
	exit_timer: 20,
	exit_timer_reset: 20,
}
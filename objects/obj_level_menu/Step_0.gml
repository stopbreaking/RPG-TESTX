confirm_text.progress ++;


if (confirm_prompt.exit_timer > 0) 
{
	confirm_prompt.exit_timer --;
	confirm_prompt.blink_ticker --;
	if (confirm_prompt.blink_ticker <= 0) 
	{
		confirm_prompt.blink_ticker = confirm_prompt.blink_ticker_reset;
	}
}


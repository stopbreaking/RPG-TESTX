alpha = easeout_sine(t);
t = min(t + dt, 1);

text_progress += global.text_speed;
hop_progress += hop_increment;

if(hop_progress > string_length(text))
{
	hop_progress = 0;
}
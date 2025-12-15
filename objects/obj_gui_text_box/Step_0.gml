lerp_progress += (1 - lerp_progress) / 50;

x1 = lerp(x1, x1_target, lerp_progress);
x2 = lerp(x2, x2_target, lerp_progress);

y1 = lerp(y1, y1_target, lerp_progress);
y2 = lerp(y2, y2_target, lerp_progress);
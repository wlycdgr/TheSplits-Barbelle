/// @description Begin twitch	
target_size = title1_size + random_range(twitch_minScaleUp, twitch_maxScaleUp);

twitch_up_per_frame = (target_size - title1_size) * random_range(twitch_minPropTwitchPerFrame, twitch_maxPropTwitchPerFrame);
twitch_down_per_frame = twitch_up_per_frame * twitch_twitchDownPerFrameMult;

twitching_up = true;
twitching_down = false;
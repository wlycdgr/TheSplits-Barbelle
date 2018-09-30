/// @function scr_Steam_AddToCumulativeStat(stat_name, amount_to_add)

var old_value = steam_get_stat_int(argument0);

var new_value = old_value + argument1;

steam_set_stat_int(stat_name, new_value);

return new_value;


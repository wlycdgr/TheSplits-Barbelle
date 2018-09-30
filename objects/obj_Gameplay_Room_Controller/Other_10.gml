/// @description On game over

with (global.scoreboard) { event_user(0); } // on game over - upload score
with (game_over_sliding_ribbon) { event_user(0); } // activate game over UI ribbon
# Add one to the index
scoreboard players add sidebar_rotation indexes 1
execute if score sidebar_rotation indexes matches 8 run scoreboard players set sidebar_rotation indexes 0

# Change the displayed score out of the 8 scores
execute if score sidebar_rotation indexes matches 0 run scoreboard objectives setdisplay sidebar deaths
execute if score sidebar_rotation indexes matches 1 run scoreboard objectives setdisplay sidebar experience_levels
execute if score sidebar_rotation indexes matches 2 run scoreboard objectives setdisplay sidebar fish
execute if score sidebar_rotation indexes matches 3 run scoreboard objectives setdisplay sidebar food
execute if score sidebar_rotation indexes matches 4 run scoreboard objectives setdisplay sidebar jump
execute if score sidebar_rotation indexes matches 5 run scoreboard objectives setdisplay sidebar kills
execute if score sidebar_rotation indexes matches 6 run scoreboard objectives setdisplay sidebar play_time
execute if score sidebar_rotation indexes matches 7 run scoreboard objectives setdisplay sidebar sleep

# Schedule the next iteration
schedule function sidebar-scores-rotation:auto-rotation 60s

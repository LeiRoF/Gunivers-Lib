tag @s remove glib.collision

execute as @s[scores={glib.collision=1..}] at @s run function glib_child:default/move/by_motion/collision_detect_x
tag @s[scores={glib.collision=1..},tag=glib.collisionX] add glib.collision

#----------------#
# glib.collision on Y #
#----------------#

execute as @s[scores={glib.collision=1..}] at @s run function glib_child:default/move/by_motion/collision_detect_y
tag @s[scores={glib.collision=1..},tag=glib.collisionY] add glib.collision

#----------------#
# glib.collision on Z #
#----------------#

execute as @s[scores={glib.collision=1..}] at @s run function glib_child:default/move/by_motion/collision_detect_z
tag @s[scores={glib.collision=1..},tag=glib.collisionZ] add glib.collision

#-----------#
# Reactions #
#-----------#

execute if entity @s[tag=glib.collision] run function glib_config:move/collision_reactions/_main_

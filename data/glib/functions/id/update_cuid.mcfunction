#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:id/Updatecuid
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#id
# Parallelizable: global
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.id dummy [{"text":"GLib ","color":"gold"},{"text":"ID","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set id.chain glib.data 1
tag @e[scores={glib.id=1..}] add glib.id.chain.update

function glib_child:default/id/updatecuid-check

tag @e remove glib.id.chain.update
tag @e remove glib.id.chain.correct

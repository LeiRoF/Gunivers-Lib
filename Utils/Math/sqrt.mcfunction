# NAME: Square Root
# PATH: Gunivers-Lib:Utils/Math/Sqrt

# AUTHOR: Luludatra
# CONTRIBUTOR:
# - Theogiraudet/Oromis

# VERSION: 1.1
# MINECRAFT: 1.12

# REQUIEREMENTS:
# - Gunivers-Lib:Import/Math (MCfunction)
# - Tmp (score dummy)
# - Tmp2 (score dummy)
# - Tmp3 (score dummy)
# - Tmp4 (score dummy)

# INPUT:
# - Tmp (score dummy)

# OUTPUT:
# - Res (score dummy)

# NOTE: Resolution of the square root of a number

# CONFIGURATION:
scoreboard players set @s Tmp2 20
# -> Allows you to manage the accuracy of the result. More this value is high, more the impact on the performance is high.
# -> Default value: 20.

# CODE:

# Verifying the presence of a negative number
scoreboard players operation @s Res = @s Tmp
scoreboard players operation @s[score_Res=-1] Res *= -1 Constant 

# Operation
scoreboard players operation @s Tmp3 = @s Res
scoreboard players operation @s Tmp3 /= 2 Constant

# Loop to execute {Tmp2} time
execute @s ~ ~ ~ function Gunivers-Lib:Utils/Math/Sqrt-Loop

# Save
scoreboard players operation @s Res = @s Tmp4

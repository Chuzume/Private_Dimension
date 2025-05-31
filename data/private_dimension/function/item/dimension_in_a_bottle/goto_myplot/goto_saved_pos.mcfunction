#> private_dimension:item/dimension_in_a_bottle/goto_myplot/goto_saved_pos
#
# 使用者の保存Posを使って移動
#
# @within function private_dimension:item/dimension_in_a_bottle/goto_myplot/goto_plot

# 保存Posのそれぞれを自身のPosにする
  execute store result entity @s Pos[0] double 0.1 run scoreboard players get @p[tag=This] PrivateDim.PosX
  execute store result entity @s Pos[1] double 0.1 run scoreboard players get @p[tag=This] PrivateDim.PosY
  execute store result entity @s Pos[2] double 0.1 run scoreboard players get @p[tag=This] PrivateDim.PosZ

# 使用者を呼び出す
  execute at @s in private_dimension:private_area run tp @p[tag=This] ~ ~ ~

# 自分は消える
  kill @s

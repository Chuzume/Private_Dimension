#> private_dimension:item/dimension_in_a_bottle/goto_myplot/goto_saved_pos
#
# 使用者の保存Posを使って移動
#
# @within function private_dimension:item/dimension_in_a_bottle/goto_myplot/goto_plot

# 保存Posのそれぞれを自身のPosにする
  execute store result entity @s Pos[0] double 0.1 run scoreboard players get @a[tag=This,limit=1] PrivateDim.PosX
  execute store result entity @s Pos[1] double 0.1 run scoreboard players get @a[tag=This,limit=1] PrivateDim.PosY
  execute store result entity @s Pos[2] double 0.1 run scoreboard players get @a[tag=This,limit=1] PrivateDim.PosZ

# 使用者を呼び出す
  execute at @s in private_dimension:private_area run tp @a[tag=This,limit=1] ~ ~ ~

# 自分は消える
  kill @s

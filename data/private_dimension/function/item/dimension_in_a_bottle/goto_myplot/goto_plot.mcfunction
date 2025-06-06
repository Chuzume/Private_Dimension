#> private_dimension:item/dimension_in_a_bottle/goto_myplot/goto_plot
#
# 自分の持ってる空間へと移動
#
# @within function private_dimension:item/dimension_in_a_bottle/check_haveplot

# 使用者判定用タグを付与
  tag @s add This

# マーカーを召喚
  summon marker ~ ~ ~ {Tags:["PrivateDim.TPMarker"]}

# マーカーに対してTP処理を仕掛ける
  execute as @e[type=marker,tag=PrivateDim.TPMarker,sort=nearest,limit=1] run function private_dimension:item/dimension_in_a_bottle/goto_myplot/goto_saved_pos

# 場所を更新した上で演出
  execute at @s run function private_dimension:item/dimension_in_a_bottle/vfx

# タグ付与してたらモブを引っ張ってくる
  execute at @s as @e[tag=PrivateDim.Bring] run function private_dimension:item/dimension_in_a_bottle/pull_mobs

# アイテムが戻ってくる
  execute at @s[gamemode=!creative] run loot spawn ~ ~ ~ loot private_dimension:item/dimension_in_a_bottle
  tag @s[gamemode=!creative] add PrivateDim.ForcePickup

# 即座に追い出されないようにする
  tag @s add PrivateDim.InPlot

# 使用者判定用タグを削除
  tag @s remove This

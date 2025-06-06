#> private_dimension:item/dimension_in_a_bottle/pull_mobs
#
# モブを引っ張ってきてタグを消す
#
# @within function private_dimension:item/dimension_in_a_bottle/**

# タグを奪う
  tag @s remove PrivateDim.Bring

# モブを引っ張ってくる
  tp @s ~ ~ ~

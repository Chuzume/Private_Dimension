#> private_dimension:item/dimension_in_a_bottle/check_haveplot
#
# 個人ディメンションに移動
#
# @within function private_dimension:item/dimension_in_a_bottle/use

# 移動済みタグを付与
  tag @s add PrivateDim.Teleported

# 戻る地点を記録しておく
  forceload add ~ ~
  summon marker ~ ~ ~ {Tags:["PrivateDim.BackMarker"]}
  scoreboard players operation @e[type=marker,sort=nearest,limit=1] Chuz.EntityID = @s Chuz.PlayerID

# 土地を持ってるなら移動
  execute if score @s PrivateDim.HavePlot matches 1 run function private_dimension:item/dimension_in_a_bottle/goto_myplot/goto_plot

# 持ってなかったら土地作る処理に
  execute unless score @s PrivateDim.HavePlot matches 1 in private_dimension:private_area run function private_dimension:item/dimension_in_a_bottle/claim_plot/goto_000

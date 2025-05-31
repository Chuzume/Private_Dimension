#> private_dimension:item/dimension_in_a_bottle/use
#
# 使用時
#
# @within function private_dimension:event/throw_linger_potion/main

# エンティティとしてのポーションは不要なのでキル
  kill @e[type=potion,sort=nearest,limit=1]

# 投げた音を止める
  stopsound @s neutral minecraft:entity.lingering_potion.throw

# 演出
  execute at @s run function private_dimension:item/dimension_in_a_bottle/vfx

# スニークしてたら周囲の存在を巻き込んで移動する
  execute if predicate private_dimension:sneak run tag @e[type=!#private_dimension:cannot_tp,distance=..3,limit=10] add PrivateDim.Bring

# プライベート次元でないなら、プライベート次元に移動
  execute if entity @s[tag=!PrivateDim.Teleported,predicate=!private_dimension:in_private_area] run function private_dimension:item/dimension_in_a_bottle/check_haveplot

# プライベート次元なら、ベースワールドに帰還
  execute if entity @s[tag=!PrivateDim.Teleported,predicate=private_dimension:in_private_area] run function private_dimension:item/dimension_in_a_bottle/goto_baseworld/goto_backmarker

# エフェクト
  effect give @s blindness 2 0 true

# 移動終わったらタグリセット
  tag @s remove PrivateDim.Teleported

#> private_dimension:item/dimension_in_a_bottle/craft
#
# 作成
#
# @within advancement private_dimension:craft/dimension_in_a_bottle

# 演出
  execute anchored eyes positioned ^ ^ ^1.5 run playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 1 1
  execute anchored eyes positioned ^ ^ ^1.5 run playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 1 2

# 実行者の位置にアイテムを召喚
#execute at @s run loot spawn ~ ~ ~ loot private_dimension:item/dimension_in_a_bottle

# すぐに拾えるようにNBT変更
#data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0

# 次回以降も実行するためにレシピ没収
#recipe take @s private_dimension:item/dimension_in_a_bottle

# クラフト時のダミー表示のチェストを削除
#clear @s chest 1

# 進捗消去
  advancement revoke @s only private_dimension:craft/dimension_in_a_bottle

#> private_dimension:tick
#
# 常時Tickされる処理
#
# @within tag/function minecraft:tick

# 残留ポーションを投げると実行される
  execute as @a[scores={PrivateDim.Use.LingerPotion=0..}] at @s run function private_dimension:event/throw_linger_potion/main

# 無理やりアイテムを拾う
  execute as @a[tag=PrivateDim.ForcePickup] at @s run function private_dimension:event/force_pickup

# バックマーカーの見た目的なもの
  execute at @e[tag=PrivateDim.BackMarker] run function private_dimension:entity/backmarker

# アイテム保護
  execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ChuzData:{ItemID:Dimension_in_a_Bottle}}}}}] at @s run function private_dimension:entity/protected_item

# ボーダー
  execute as @e[tag=PrivateDim.PlotBorder] at @s run function private_dimension:entity/plotborder/tick

# 死んだら実行される
  execute as @a[scores={PrivateDim.Death=0..}] at @s run function private_dimension:event/death

# スコアID
  execute as @a unless score @s Chuz.PlayerID matches 0.. run function private_dimension:player_id

# タグリセット
  tag @a[tag=PrivateDim.Using.Potion] remove PrivateDim.Using.Potion

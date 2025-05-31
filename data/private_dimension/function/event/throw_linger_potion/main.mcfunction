#> private_dimension:event/throw_linger_potion/main
#
# 投げられたポーションのチェック
#
# @within function private_dimension:tick

# 瓶入りディメンション
    execute if entity @e[type=potion,nbt={Item:{tag:{ChuzData:{ItemID:Dimension_in_a_Bottle}}}},sort=nearest,limit=1] run function private_dimension:item/dimension_in_a_bottle/use
    

# スコアリセット
    scoreboard players reset @s PrivateDim.Use.LingerPotion
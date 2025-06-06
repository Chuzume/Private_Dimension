#> private_dimension:item/dimension_in_a_bottle/vfx
#
#
#
# @within function
#     private_dimension:item/dimension_in_a_bottle/**
#     private_dimension:entity/plotborder/force_back

# サウンド
    playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 2 0.8
    playsound minecraft:entity.allay.item_taken player @a ~ ~ ~ 2 0.8
    playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 2 1.2

# パーティクル
    particle minecraft:glow ~ ~1 ~ 0.2 0.5 0.2 1 50 force @a[distance=..30]
    particle minecraft:dust_color_transition{from_color:[0.000,0.700,1.000],scale:1,to_color:[0.600,1.000,1.000]} ~ ~1 ~ 0.2 0.5 0.2 1 100 force @a[distance=..30]

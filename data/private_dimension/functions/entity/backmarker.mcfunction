#> private_dimension:entity/backmarker
#
# バックマーカーのTick処理
#
# @within function private_dimension:tick

# パーティクル
    particle minecraft:glow ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
    particle minecraft:dust_color_transition 0 0.7 1 1 0.6 1 1 ~ ~0.5 ~ 0.1 0.1 0.1 1 1 force @a[distance=..30]
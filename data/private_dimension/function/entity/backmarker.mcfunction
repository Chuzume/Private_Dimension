#> private_dimension:entity/backmarker
#
# バックマーカーのTick処理
#
# @within function private_dimension:tick

# パーティクル
  particle minecraft:glow ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
  particle minecraft:dust_color_transition{from_color:[0.000,0.700,1.000],scale:1,to_color:[0.600,1.000,1.000]} ~ ~0.5 ~ 0.1 0.1 0.1 1 1 force @a[distance=..30]

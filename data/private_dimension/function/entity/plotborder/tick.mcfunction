#> private_dimension:entity/plotborder/tick
#
# プロットから無理やり出ると送り返される
#
# @within function private_dimension:tick

# 外に出た人は戻る処理が発生する
    execute as @a[tag=!PrivateDim.DebugMode,tag=!PrivateDim.InPlot,distance=..60] at @s run function private_dimension:entity/plotborder/force_back

# タグリセット
    execute positioned ~-25 ~-1 ~-25 run tag @a[tag=PrivateDim.InPlot,dx=48,dy=48,dz=48] remove PrivateDim.InPlot

# プロット内にいる人にはタグを付与
    execute positioned ~-24 ~ ~-24 run tag @a[dx=46,dy=46,dz=46] add PrivateDim.InPlot

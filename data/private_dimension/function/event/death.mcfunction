#> private_dimension:event/death
#
# 死んだときもろもろ
#
# @within function private_dimension:tick

# 自身のバックマーカーを削除、その場所のロードを解除
    execute at @e[type=marker,tag=PrivateDim.BackMarker] if score @s Chuz.PlayerID = @e[type=marker,tag=PrivateDim.BackMarker,distance=..0.1,sort=nearest,limit=1] Chuz.EntityID run forceload remove ~ ~
    execute at @e[type=marker,tag=PrivateDim.BackMarker] if score @s Chuz.PlayerID = @e[type=marker,tag=PrivateDim.BackMarker,distance=..0.1,sort=nearest,limit=1] Chuz.EntityID run kill @e[type=marker,tag=PrivateDim.BackMarker,distance=..0.1,sort=nearest,limit=1]

# スコアリセット
    scoreboard players reset @s PrivateDim.Death
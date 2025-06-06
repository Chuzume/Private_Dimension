#> private_dimension:item/dimension_in_a_bottle/claim_plot/get_plot
#
#
#
# @within function private_dimension:item/dimension_in_a_bottle/claim_plot/check

# 強制読み込み
    forceload add ~ ~

# 足腰対策
    effect give @s slow_falling 1 0 true

# タグ付与
    tag @s add PrivateDim.ClaimSuccess

# 土地所有フラグを1にする
    scoreboard players set @s PrivateDim.HavePlot 1

# 足場置く
    setblock ~ ~ ~ air
    execute positioned ~-24 ~ ~-24 run place template private_dimension:plot48x48

# 下に降りる
    tp @s ~ 65 ~

# ボーダー召喚
    summon marker ~ 60 ~ {Tags:["PrivateDim.PlotBorder"]}

# アイテムが戻ってくる
    execute at @s[gamemode=!creative] run loot spawn ~ ~ ~ loot private_dimension:item/dimension_in_a_bottle
    tag @s[gamemode=!creative] add PrivateDim.ForcePickup

# タグ付与してたらモブを引っ張ってくる
    execute at @s as @e[tag=PrivateDim.Bring] run function private_dimension:item/dimension_in_a_bottle/pull_mobs

# 自身のPosをスコア化
    execute at @s store result score @s PrivateDim.PosX run data get entity @s Pos[0] 10
    execute at @s store result score @s PrivateDim.PosY run data get entity @s Pos[1] 10
    execute at @s store result score @s PrivateDim.PosZ run data get entity @s Pos[2] 10

# 場所を更新した上で演出
    execute at @s run function private_dimension:item/dimension_in_a_bottle/vfx

# 即座に追い出されないようにする
    tag @s add PrivateDim.InPlot

# 強制読み込み解除
    forceload remove all

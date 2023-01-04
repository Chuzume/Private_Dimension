#> private_dimension:player_id
#
# プレイヤーIDを割り振る
#
# @within function private_dimension:tick

# プレイヤーに数値IDを割り振る
    scoreboard players add $Chuz.PlayerID.Core Chuz.PlayerID.Core 1
    scoreboard players operation @s Chuz.PlayerID = $Chuz.PlayerID.Core Chuz.PlayerID.Core
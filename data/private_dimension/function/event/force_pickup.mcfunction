#> private_dimension:event/force_pickup
#
# 無理やり拾う
#
# @within function private_dimension:tick

# IDを最寄りのマーカーにコピー
  execute store success score $PickupSuccess Chuz.Temporary run data merge entity @e[type=item,sort=nearest,limit=1] {PickupDelay:0s}

# 成功したらタグ削除
  execute if score $PickupSuccess Chuz.Temporary matches 1 run tag @s remove PrivateDim.ForcePickup

# リセット
  scoreboard players reset $PickupSuccess Chuz.Temporary

#> private_dimension:entity/protected_item
#
# キラキラ光って無敵のアイテム
#
# @within function private_dimension:tick

# NBT変更
    execute if entity @s[tag=!PrivateDim.NBTChanged] run data merge entity @s {Age:-32768,Invulnerable:1b}

# Mergeは重いので二度とやらねえ
    tag @s[tag=!PrivateDim.NBTChanged] add PrivateDim.NBTChanged

# キラキラ光る
    particle minecraft:electric_spark ~ ~0.2 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
    particle minecraft:dust_color_transition 0 0.7 1 0.7 0.6 1 1 ~ ~0.2 ~ 0.1 0.1 0.1 0 1 force @a[distance=..30]
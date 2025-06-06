#> private_dimension:install/check
#
# インストールチェック
#
# @within advancement private_dimension:entered_world

execute unless data storage chuz:context PrivateDim.Install run function private_dimension:install/main
data modify storage chuz:context PrivateDim.Install set value 1
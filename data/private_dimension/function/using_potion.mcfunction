#> private_dimension:using_potion
#
# タグをつけて進捗剥奪 タグ削除は実行処理のところでやる
#
# @within advancement private_dimension:using_check/potion

tag @s add PrivateDim.Using.Potion
advancement revoke @s only private_dimension:using_check/potion
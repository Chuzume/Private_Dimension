#> private_dimension:item/dimension_in_a_bottle/claim_plot/check
#
# 取得されてるエリアかどうかチェック
#
# @within function
#   private_dimension:item/dimension_in_a_bottle/claim_plot/goto_000
#   private_dimension:item/dimension_in_a_bottle/claim_plot/check

# 強制読み込み
    forceload add ~ ~

# マーカーが無ければY65へと移動してエリア生成
    execute positioned ~ 60 ~ unless block ~ ~ ~ bedrock run function private_dimension:item/dimension_in_a_bottle/claim_plot/get_plot

# 岩盤を調べて、あったら横に128ずれてもう一度実行
    execute unless entity @s[tag=PrivateDim.ClaimSuccess] positioned ~ 60 ~ if block ~ ~ ~ bedrock positioned ~ ~ ~128 run function private_dimension:item/dimension_in_a_bottle/claim_plot/check

# タグ削除
    tag @s remove PrivateDim.ClaimSuccess
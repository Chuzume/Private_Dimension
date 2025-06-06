#> private_dimension:load
#
# load時の処理
#
# @within tag/function minecraft:load


#> スコアID関連のスコボード
  scoreboard objectives add Chuz.PlayerID.Core dummy
  scoreboard objectives add Chuz.PlayerID dummy
  scoreboard objectives add Chuz.EntityID dummy
  scoreboard objectives add Chuz.Temporary dummy

#> このデータパックのスコア
  scoreboard objectives add PrivateDim.HavePlot dummy
  scoreboard objectives add PrivateDim.PlotID dummy
  scoreboard objectives add PrivateDim.Use.LingerPotion minecraft.used:minecraft.lingering_potion
  scoreboard objectives add PrivateDim.Death deathCount

#> 区画のXYZ座標
  scoreboard objectives add PrivateDim.PosX dummy
  scoreboard objectives add PrivateDim.PosY dummy
  scoreboard objectives add PrivateDim.PosZ dummy

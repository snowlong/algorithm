# 問題
# 3本の塔がある。
# 1本の塔には円盤がn枚置かれている。
# 円盤はサイズ順になっていて上のものほど小さい。
# この円盤を他の円盤にそっくり移し変えたい。

# 参考
# 1枚の円盤を == で表すと以下のようになる。
#     ==
#    ====
#   ======

# ルール
# ・1回に1枚の円盤しか動かせない
# ・ある棒の一番上の円盤を、他の棒の円盤に移動させる
# ・小さい円盤の上に移動させてはいけない
def hanoi(n, from, to, aux)
  # 円盤が1枚であれば円盤を移動させ、処理を戻す
  if n == 1
    p "Move disk 1 from peg #{from} to peg #{to}" if (n == 1) 
    return
  end

  # n-1枚目をauxへ移動させる(to経由で)
  hanoi(n-1, from, aux, to)
  # 残りの円盤をfrom からto へ
  p "Move disk #{n} from peg #{from} to peg #{to}"

  # n-1枚目をauxからtoへ移動させる(from経由で)
  hanoi(n-1, aux, to, from)

end

hanoi(3, "F", "T", "A")

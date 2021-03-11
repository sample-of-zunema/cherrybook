# ハッシュから配列へ、配列からハッシュへ


currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
p currencies.to_a

array = [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]
p array.to_h

# ハッシュとして解析不可能な配列に対してto_hメソッドを呼ぶとエラーになる
# array = [1, 2, 3, 4]
# p array.to_h


# キーが重複した場合は最後に登場した配列の要素がハッシュに採用される。だが基本的には使わないようにする
array = [[:japan, "yen"], [:japan, "円"]]
p array.to_h


# キーと値のペアの配列をHash[]に渡す
array = [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]
p Hash[array]

# キーと値が交互に並ぶフラットな配列をsplat展開してもいい
# splat展開については「4.7.6　１つの配列を複数の引数として展開する」を参照
array = [:japan, "yen", :us, "dollar", :india, "rupee"]
p Hash[*array]
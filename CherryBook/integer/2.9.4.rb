# 数値クラスのあれこれ

puts 10.class
puts 1.5.class

# 有理数リテラルを使う（3rが有理数リテラル）
r = 2 / 3r
puts r
puts r.class

# 文字列から有理数に変換する
r = '2/3'.to_r
puts r
puts r.class

# 複素数リテラルを使う
c = 0.3 - 0.5i
puts c
puts c.class

# 文字列から複素数に変換する
c = '0.3-0.5i'.to_c
puts c
puts c.class
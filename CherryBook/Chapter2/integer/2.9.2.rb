# ビット演算

puts 0b1010
puts 0b1010.to_s(2)
puts 0b1100
puts 0b1100.to_s(2)
puts (0b1010 & 0b1100)

puts (~0b1010).to_s(2)

puts (0b1010 & 0b1100).to_s(2)

puts (0b1010 | 0b1100).to_s(2)

puts (0b1010 ^ 0b1100).to_s(2)

puts (0b1010 >> 1).to_s(2)

puts (0b1010 << 1).to_s(2)
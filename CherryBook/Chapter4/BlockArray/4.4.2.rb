# select/find_all/reject


numbers = [1, 2, 3, 4, 5, 6]
# ブロックの戻り値が真になった要素だけが集められる
even_numbers = numbers.select { |n| n.even? }
p even_numbers


numbers = [1, 2, 3, 4, 5, 6]
# ３の倍数を除外する（３の倍数以外を集める）
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
p non_multiples_of_three
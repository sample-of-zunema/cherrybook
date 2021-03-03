# throwとcatchを使った大域脱出


# catch タグ do
#   # 繰り返し処理など
#   throw タグ
# end

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        # 全ての繰り返し処理を脱出する
        throw :done
      end
    end
  end
end


# throwとcatchのタグが一致しない場合はエラーになる
# fruits = ['apple', 'melon', 'orange']
# numbers = [1, 2, 3]
# catch :done do
#   fruits.shuffle.each do |fruit|
#     numbers.shuffle.each do |n|
#       puts "#{fruit}, #{n}"
#       if fruit == 'orange' && n == 3
#         # catchと一致しないタグをthrowする
#         throw :foo
#       end
#     end
#   end
# end


# throwメソッドに第２引数を渡すとcatchメソッドの戻り値になる
ret =
  catch :done do
    throw :done
  end
p ret

ret =
  catch :done do
    throw :done, 123
  end
p ret
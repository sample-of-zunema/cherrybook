# %記法で文字列を作る

# %q! !はシングルクオートで囲んだことと同じになる
puts %q!He said, "Don't speak."!

# %Q! !はダブルクオートで囲んだことと同じになる
something = "Hello."
puts %Q!He said, "#{something}"!

# %! !もダブルクオートで囲んだことと同じになる
something = "Bye."
puts %!He said, "#{something}"!
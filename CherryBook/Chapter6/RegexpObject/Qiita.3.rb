# 初心者歓迎！手と目で覚える正規表現入門・その３「空白文字を自由自在に操ろう」


text = <<-TEXT
def hello(name)
  puts "Hello, \#{name}!"
end

hello('Alice')

hello('Bob')

hello('Carol')
TEXT


puts text.gsub(/^[ \t]+$/, '')


# text2 = <<-TEXT
# def hello(name)
#   puts "Hello, #{name}!"
# end
# TEXT

# puts text2.gsub(/[ \t]+$/, '')
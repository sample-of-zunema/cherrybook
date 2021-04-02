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

text3 = <<-TEXT
Feb 14 07:33:02 app/web.1:  Completed 302 Found ...
Feb 14 07:36:46 heroku/api:  Starting process ...
Feb 14 07:36:50 heroku/scheduler.7625:  Starting ...
Feb 14 07:36:50 heroku/scheduler.7625:  State ...
Feb 14 07:36:54 heroku/router:  at=info method=...
Feb 14 07:36:54 app/web.1:  Started HEAD "/" ...
Feb 14 07:36:54 app/web.1:  Completed 200 ...
TEXT

puts text3.gsub(/^.+heroku\/(api|scheduler).+\n/, '')
# inject/reduce


numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
p sum

numbers = [1, 2, 3, 4]
sum = numbers.inject(0) { |result, n| result + n }
p sum

week = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'sat']
weeks = week.inject('Sun') { |result, s| result + s }
p weeks
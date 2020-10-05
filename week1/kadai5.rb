sum = gets.to_i
sum2 = sum
array = []
i = 0
while sum != 0
  puts"#{i+1}番目の学生の名前は何ですか?"
  name = gets.chomp
  array[i] = name
  i += 1
  sum -= 1
end
i = 0
puts"-------------名簿---------------"
while sum2 != 0
  puts"+ #{i+1}番目の学生は#{array[i]}です"
  i += 1
  sum2 -= 1
end
puts"-------------------------------"



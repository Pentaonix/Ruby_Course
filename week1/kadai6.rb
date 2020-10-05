sum = gets.to_i
sum2 = sum #cho luc print result
array = [] #mang chinh luu tat ca cac mang temp
temp = [] #mang tam thoi luu info tung sv
i = 0
j = 0

while sum != 0
  puts"#{i+1}番目の学生の名前は何ですか?"
  name = gets.chomp
  temp[j] = name
  j += 1
  puts"#{i+1}番目の学生番号は何ですか?"
  mssv = gets.to_i
  temp[j] = mssv
  array[i] = temp.pop(2) #luu info sv vao mang
  j = 0
  i += 1
  sum -= 1
end

i = 0
j = 0
puts"-------------名簿---------------"
while sum2 != 0
  puts"学生番号 #{array[i][j+1]} - 名前 #{array[i][j]}"
  j = 0
  i += 1
  sum2 -= 1
end
puts"-------------------------------"




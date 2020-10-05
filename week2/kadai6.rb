general = [
  {
    language: "You chose English",
    accountInput: "Please enter your account and password",
    account: "Account >",
    password: "Password >",
    wrong: "Wrong password or Account",
    ask: "Enter your amount of money that you want to withdraw",
    confirm: "Succeeded",
    left: "left",
    reject: "Exceeded"
  },

  {
    language: "日本語を選択しました",
    accountInput: "アカウントとパスワードを入力してください",
    account: "アカウント >",
    password: "暗証番号 >",
    wrong: "アカウントとパスワードの入力が間違いました",
    ask: "引き出したい金額を入力してください",
    confirm: "成功しました",
    left:"残りの金額は",
    reject: "過剰"
  },

  {
    language: "Ban da chon Tieng Viet",
    accountInput: "Nhap tai khoan va mat khau",
    account: "Tai khoan >",
    password: "Mat khau >",
    wrong: "Sai tai khoan hoac mat khau",
    ask: "Nhap so tien ban muon rut",
    confirm: "Thanh cong",
    left: "So tien con lai la",
    reject: "Vuot qua so tien"
  }
]

class Bank
  attr_accessor :account
  attr_accessor :password
  attr_accessor :money

  def initialize(account,password,money)
    @account = account
    @password = password
    @money = money
  end

  def take_money(amount)
    left = money - amount
    return left
  end

end

loc = Bank.new("locga","123456",500000)
huy = Bank.new("huyga","123",1000000)
nam = Bank.new("namga","123456789",2000000)
people = [loc,huy,nam]

puts "言語を選んでください
1. 英語
2. 日本語
3. ベトナム語
--------------------------------------"

choice = gets.to_i
if choice <= 0 || choice > 3
  puts "Wrong choice, please try again"
  return 0
else
  puts "#{general[choice-1][:language]}"
end

puts "#{general[choice-1][:accountInput]}"
puts "#{general[choice-1][:account]}"
account = gets.chomp
puts "#{general[choice-1][:password]}"
password = gets.chomp

# people.each do |person|
#   if account == person.account && password == person.password
#     puts "#{general[choice-1][:ask]}"
#     break
#   else
#     next
#   end
#   puts "#{general[choice-1][:wrong]}"
# end

def check_account(account,password, people)
  people.each do |person|
    if account == person.account && password == person.password
      return true
    end
  end
  return false
end

if check_account(account,password, people) 
  puts "#{general[choice-1][:ask]}"
else  
  puts "#{general[choice-1][:wrong]}"
  return 0
end

user = []
if check_account(account,password, people) 
  people.each do |person|
    if account == person.account
      user.push(person)
      break
    end
  end
end

takemoney = gets.to_i
conlai = user[0].take_money(takemoney)
if conlai < 0
  puts "#{general[choice-1][:reject]}"
else
  puts "#{general[choice-1][:confirm]}"
  puts "#{general[choice-1][:left]} #{conlai}"
end
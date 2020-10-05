class Menu
  # attr_accessor :name
  # attr_accessor :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def info
    return "#{@name} is #{@price}vnd"
  end
end

menu1 = Menu.new("Pho",30000)
menu2 = Menu.new("Bun",20000)
menu3 = Menu.new("Com",25000)

menu = []
menu[1],menu[2],menu[3] = menu1,menu2,menu3

for i in 1..3
  puts menu[i].info
end
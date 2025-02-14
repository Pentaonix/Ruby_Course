class Menu
  attr_accessor :name
  attr_accessor :price
  def initialize(name, price)
    @name = name
    @price = price
  end
  def info
    return "#{@name} #{@price}vnd"
  end
end


class Drink < Menu
  attr_accessor :size
  def initialize(name,price)
    super(name,price)
    @size = size
  end
  def info
    return "#{@name} is #{@price}vnd (#{@size} size)"
  end
end

menu1 = Menu.new("Pho",30000)
menu2 = Menu.new("Bun cha",40000)
menu3 = Menu.new("Banh mi",20000)

drink1 = Drink.new("Coca", 15000)
drink1.size = "S"
drink2 = Drink.new("Fanta", 10000)
drink2.size = "XL"

menus = []
menus.push(menu1)
menus.push(menu2)
menus.push(menu3)
menus.push(drink1)
menus.push(drink2)

menus.each do |menus|
  puts "#{menus.info}"
end
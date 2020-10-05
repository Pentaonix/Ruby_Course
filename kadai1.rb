class Menu
  attr_accessor :name
  attr_accessor :price

  def get_total_price(count)
    total_price = count * price
    if count >= 3
      total_price = total_price - 10000
    end
    return puts "「#{@name} #{total_price}vnd」"
  end
end

menu1 = Menu.new
menu1.name = "bun cha"
menu1.price = 20000
menu1.get_total_price(10)


require_relative('pizza')


class Pizzeria
  @@chain_name = 'Super Pizza'
  @@pizzas_sold = 0
  @@stores = []

  def initialize(owner_name)
    @open = false
    @stock = 0
    @owner = owner_name
    @pizzas_sold = 0

    @@stores << owner_name
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def restock
    unless @open
      @stock = 5
    end
  end

  def order(toppings, size)
    if @open == false || @stock == 0
      return
    end
    new_pizza = Pizza.new(toppings, size)
    @stock -= 1
    @pizzas_sold += 1
    @@pizzas_sold += 1
    new_pizza.bake
    store_cut(new_pizza)

    return new_pizza
  end

  def store_cut(pizza)
    4.times do
      pizza.cut
    end
  end

  def store_name
    return "#{@owner}'s #{@@chain_name}"
  end

  def self.chain_pizzas_sold
    return @@pizzas_sold
  end

  def store_pizzas_sold
    return @pizzas_sold
  end

  # def self.chain_store_name
  #   return "#{@owner}'s #{@@chain_name}"
  # end

end

p Pizzeria.chain_pizzas_sold

super_pizza = Pizzeria.new('Sally')
p super_pizza

# p super_pizza.store_name
#
# p Pizzeria.chain_store_name

super_pizza.restock
super_pizza.open
p super_pizza
#
#
my_pizza = super_pizza.order(['cheese', 'olives', 'tomatoes'], 'large')
p super_pizza
# p my_pizza
p Pizzeria.chain_pizzas_sold
# my_pizza.eat

awesome_pizza = Pizzeria.new('Joe')
awesome_pizza.restock
awesome_pizza.open
my_pizza = awesome_pizza.order(['cheese', 'olives', 'tomatoes'], 'large')
p awesome_pizza
p Pizzeria.chain_pizzas_sold

p awesome_pizza.store_pizzas_sold


















#

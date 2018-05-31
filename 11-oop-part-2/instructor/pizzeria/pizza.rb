
class Pizza
  def initialize(new_toppings, size)
    @cooked = false
    @slices = 0
    @toppings = new_toppings
    @size = size
  end

  def bake
    @cooked = true
  end

  def cut
    if @cooked
      @slices += 2
    end
  end

  def eat
    if @slices > 0 && @cooked == true
      @slices -= 1
    end
  end
end

# my_toppings = ['peppers', 'cheese', 'pepperoni']
# my_pizza = Pizza.new(my_toppings, 'small')
# p my_pizza
#
# my_pizza.bake
# p my_pizza
#
# my_pizza.cut
# p my_pizza
#
# 5.times do
#   my_pizza.eat
#   p my_pizza
# end
#
# p '---'
#
# other_pizza = Pizza.new(['cheese', 'mushrooms'], 'medium')
# p other_pizza
#
# other_pizza.bake
# p other_pizza
# 4.times do
#   other_pizza.cut
# end
# other_pizza.eat
# p other_pizza
#
# p my_pizza















#

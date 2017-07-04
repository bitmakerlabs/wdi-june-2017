require_relative 'pizza.rb'

class Pizzeria

  @@pizzas_in_the_world = []

  def initialize
    @pizzas_for_the_store = []
    @open = false
    @pizzas_remaining = 5
  end

  def order(size, toppings)
    if @open && @pizzas_remaining > 0
      puts "Ordering a pizza"
      @pizzas_remaining -= 1
      new_pizza = Pizza.new(size, toppings)
      @pizzas_for_the_store << new_pizza
      @@pizzas_in_the_world << new_pizza
      new_pizza.bake
      completely_cut_pizza(new_pizza)
    end
  end

  def get_store_pizzas
    return @pizzas_for_the_store
  end

  def self.get_world_pizzas
    return @@pizzas_in_the_world
  end

  def bake(pizza)
    pizza.bake
  end

  def completely_cut_pizza(pizza)
    4.times do
      pizza.cut
    end
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def restock
    if @open == false
      @pizzas_remaining = 5
    else
      puts "Cannot restock when open."
    end
  end
end

store = Pizzeria.new
puts store.inspect

# store.order('small', ['cheese', 'pepperoni'])

store.open
puts "should now be open"

# store.order('small', ['cheese', 'pepperoni'])

store.restock
puts "should now be restocked"

# store.order('small', ['cheese', 'pepperoni'])
puts store.inspect

def pay(cost)
  puts "OK, I'll pay $#{ cost }"
end

def order_pizza(topping)

  cost = 10

  case topping
  when 'pepperoni', 'sausage'
    cost += 2
  when 'peppers'
    cost += 4
  end

  return cost
end

pepperoni_pizza_cost = order_pizza('pepperoni')
sausage_pizza_cost = order_pizza('sausage')
cheese_pizza_cost = order_pizza('')

pay(pepperoni_pizza_cost)
pay(sausage_pizza_cost)
pay(cheese_pizza_cost)

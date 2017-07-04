class Pizza
  def initialize(pass_in_size, passed_in_toppings)
    @baked = false
    @slices = 0
    @eaten = false
    @toppings = passed_in_toppings
    @size = pass_in_size
  end

  def bake
    if @baked == false
      @baked = true
    else
      return false
    end
  end

  def eat
    if @slices > 0 && @baked
      @slices -= 1
      @eaten = true
    end
  end

  def cut
    if @baked && @slices < 8
      @slices += 2
    end
  end

end

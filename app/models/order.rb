
class Order

  attr_accessor :total, :finalPrice

  def get_total(array)
    total = 0;
    array.each do |products|
      total += products.price
    end
    return total
  end

end

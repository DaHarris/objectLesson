class WelcomeController < ApplicationController

  def index

      @product = Product.new
      @product.name = 'literal poo'
      @product.size = '2'
      @product.price = 20
      @product2 = Product.new
      @product2.name = 'useless shit'
      @product2.size = '3'
      @product2.price = 10
      @product3 = Product.new
      @product3.name = 'even more shit'
      @product3.size = '1'
      @product3.price = 30

      @customer = Customer.new
      @customer.name = 'Daniel'
      @customer.taxPercentage = 1.17
      @customer.orders = [@product, @product2, @product3]

      @customer2 = Customer.new
      @customer2.name = 'Bob'
      @customer2.taxPercentage = 1.22
      @customer2.orders = [@product2, @product]

      @customer3 = Customer.new
      @customer3.name = 'Finn'
      @customer3.taxPercentage = 1.19
      @customer3.orders = [@product]

      @customers = [@customer, @customer2, @customer3]

      @order = Order.new
      @order.total = Order.new.get_total(@customer.orders)
  end

end

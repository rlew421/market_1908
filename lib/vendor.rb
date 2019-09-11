class Vendor
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(product)
    # inventory has key, then return the value for that key
    # else, return 0
    if @inventory.has_key?(product)
      @inventory[:inventory]
    end
  end

  def stock(product, quantity)
  total_quantity = 0
    @inventory.each do |product, quantity|
      total_quantity += quantity
    end
    total_quantity
  end
end

# add quantity to this specific product in our hash

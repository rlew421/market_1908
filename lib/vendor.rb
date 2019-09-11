class Vendor
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(product)
    total_quantity = 0
    @inventory.each do |product, quantity|
      total_quantity += quantity
    end
    total_quantity
  end

  def stock(product, quantity)
      @inventory[product] = check_stock(product) + quantity
  end
end

# add quantity to this specific product in our hash
# need to add quantity to the product by key so it
# doesn't add quantity to each key in the hash

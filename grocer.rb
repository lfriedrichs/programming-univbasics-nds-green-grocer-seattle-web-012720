def find_item_by_name_in_collection(name, collection)
  index = 0 
  while index < collection.size 
    if collection[index][:item] == name
      return collection[index]
    end
    index += 1
  end
  return nil
end

def consolidate_cart(cart)
  new_Cart = []
  index = 0 
  while index < cart.size 
    item = find_item_by_name_in_collection(cart[index][:item],new_Cart)
    if item != nil
      item[:count] += 1 
    else 
      item = {
        :item => cart[index][:item],
        :price => cart[index][:price],
        :clearance => cart[index][:clearance],
        :count => 1
        }
        new_Cart << item
    end
    index += 1 
  end
  new_Cart
end

def apply_coupons(cart, coupons)
  index = 0 
  while index < coupons.size 
    coupon = coupons[index]
    item = find_item_by_name_in_collection(coupon[:item], cart)
    if item != nil
      new_count = item[:count]/coupon[:num]
      item[:count] %= coupon[:num]
      new_name = item[:item]+" W/ COUPON"
      cart << {
        :item => new_name,
        :price => coupon[:price],
        :clearance => item[:clearance],
        :count => new_count
      }
    end 
    index += 1
  end 
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end

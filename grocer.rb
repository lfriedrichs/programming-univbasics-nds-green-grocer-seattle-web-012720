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
  new_Hash = {}
  new_Array = []
  index = 0 
  while index < cart.size 
    item = cart[index][:item]
    if find_item_by_name_in_collection(item,new_Hash)
      new_Array[new_Hash[item]][:count] += 1 
    else 
      new_Hash[item] = index
      new_Array[index][:count] = 1
    end
    index += 1 
  end
  new_Array
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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

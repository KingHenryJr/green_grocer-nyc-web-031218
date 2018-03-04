require 'pry'


def consolidate_cart(cart)
  new_cart = {}
  veggies = []
  uniq_veggies = []
  cart.each do |data_hash|
      veggies << data_hash.keys
  end
  veggies = veggies.flatten
  uniq_veggies = veggies.uniq 
  uniq_veggies.each do |name|
    
    insides = cart.find{ |i| i.keys[0] == name}
    
    new_cart[name] = insides.values[0] 
    
    new_cart[name][:count] = 0
    
    end  
    
    veggies.each do |veggie|
      new_cart[veggie][:count] += 1 
    end
  
  return new_cart  
end

def apply_coupons(cart, coupons)
  
  coupons.each do |info|
    coupon_name = info[:item] + " W/COUPON"  
    binding.pry
    cart[coupon_name][:price] = info[:cost]
    cart[coupon_name][:clearance] = cart[info[:item]][:clearence]
    cart[info[:item]][:count] -= info[:num]
  end
  return cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

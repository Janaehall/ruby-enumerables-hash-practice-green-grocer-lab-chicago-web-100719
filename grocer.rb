


def consolidate_cart(cart)
  new_hash = {}
  cart.each do |item|
    if new_hash[item.keys[0]]
      new_hash[item.keys[0]][:count] += 1
    else
      new_hash[item.keys[0]] = {
        count: 1,
        price: item.values[0][:price],
        clearance: item.values[0][:clearance]
      }
    end
  end
  new_hash
end



def apply_coupons(cart, coupons)
  new_hash = {}
  coupons.each do |coupon|
    if cart.keys.include? coupon[:item]
      if cart[coupon[:item]][:count] >= coupon[:num]
        new_name = "#{coupon[:item]} W/COUPON"
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

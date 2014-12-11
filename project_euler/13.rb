x = "bignum".split(" ")
n = 0
x.each {|i| n+=i.to_i}
p n.to_s[0..9]
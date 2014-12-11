st = Time.now
require 'prime'
x = 1
m = 1
(2..Float::INFINITY).each do |i|
    x+=i
    if x%2==0
        Prime.prime_division(x).transpose.last.each {|i| m*=i+1} 
    end
    p x and break if m > 2000
    m = 1
end
p Time.now - st
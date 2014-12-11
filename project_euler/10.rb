require 'prime'
sum=0
Prime.each(2_000_000) { |i| sum+=i }
p sum
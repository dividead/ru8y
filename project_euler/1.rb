p (1...1000).select{|i| i if i%3==0 or i%5==0}.reduce(&:+)
p (1...1000).inject(0){|m,i| (i%3==0 or i%5==0) ? m+i : m} #faster?

# x = 0
# for i in 0...1000 do
#     if i%3==0 or i%5==0
#         x+=i
#     end
# end
# puts x #233168

# require 'benchmark'

# puts Benchmark.measure { (1...1000).inject(0){|m,i| (i%3==0 or i%5==0) ? m+i : m} }
# puts Benchmark.measure { (1...1000).select{|i| i if i%3==0 or i%5==0}.reduce(&:+) }
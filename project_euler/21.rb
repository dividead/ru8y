def factors(x) 
    (1...x).select {|n| (x % n).zero?}.reduce(:+) 
end
a=[]
(2..10000).each do |i|
    x = factors(i)
    a<< i unless a.include?(i) if i==factors(x) and i!=x
end
p a.reduce(:+)


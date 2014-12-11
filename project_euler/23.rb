def abu(x)
    sum=(1..x/2).select{|n| (x%n).zero?}.reduce(:+)
    x if sum>x 
end
a,b,x=[],[],20161
ab=(1..x).to_a
(12..x).each{|i| a<< abu(i)}
a.compact!
a.each{|i|
  a[0..a.length/2].each{|n| z=i+n
    b<<z if z<=x}}
p (ab-b.uniq).reduce(:+)
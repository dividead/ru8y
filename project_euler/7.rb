def prime?(x)
c=0
    (2..x-1).each { |i| c+=1 if x%i==0 }
true unless c>0
end

a=[]
(2..105000).each do |i|
    a<< i if prime?(i)
end
print a[10000]
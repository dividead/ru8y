=begin
ee = (11..20).to_a
e = (1..10).to_a
x = e[9]*e[8]
(-9..-0).each do |i|
    x%e[i+2]==0 ? (p x) : x=x*e[i+2]
end
=end

def prime?(x)
c=0
    (2..x-1).each { |i| c+=1 if x%i==0 }
true unless c>0
end    

def hurr(x)
a=[]
c=[]
    (2..x).each { |i| a<< i if x%i==0 and prime?(i) }
    (0..a.length-1).each do |i|
        until x%a[i]!=0 do
            x/= a[i]
            c<< a[i]
        end    
    end
return c
end    

def durr(x)
a=[]
    (2..x).each {|i| a<< hurr(i)}
return a
end

p durr(20).to_s
answer = 5*7*9*11*13*16*17*19
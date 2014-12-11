x = 600851475143
c=[]
for i in 2..500_000 do
   c<<i if a%i==0
end    
print c

def prime_check(x)
    counter=0
    for i in 2..x-1 do
        if x%i==0
            counter+=1
        end
    end
puts "counter = #{counter}"  
puts "#{x} is prime" unless counter>0
end    
prime_check(6857)
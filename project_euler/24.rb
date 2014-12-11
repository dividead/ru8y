def f!(n)
    (1..n).reduce(:*)
end
n,a,c,x = 9,[],[],1_000_000
num = (0..n).to_a
until n==0
    a<< b = x/f!(n)
    x-=f!(n)*b 
    c<< x
    n-=1  
end    
p a

def f(n)
    (1..n).inject {|x,y| x*y}
end
n = 20
x = f(n*2)/f(n)**2
p x
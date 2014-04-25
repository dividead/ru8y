def fib(n)
  x=[0,1,1]
  (n-3).times {x << x[-1]+x[-2]}
  x[-1]
end
p fib(100000)

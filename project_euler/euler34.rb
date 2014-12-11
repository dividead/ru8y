def f(x) x==0?1:x*=f(x-1) end
def c(x)
    n=0
    x.to_s.each_char{|i|n+=f(i.to_i)}
    x==n ? x : nil
end
p (10..f(9)).to_a.map{|i|c(i)}.compact.reduce(:+)


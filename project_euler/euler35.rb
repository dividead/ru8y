require "prime"
@n,@a=[1],[]
Prime.each(10**6){|i| @a<< i if i.to_s !~ /[02468]/}
def t(w)
    x=w.to_s.split(//)
    a=(0...x.length).map{|i|x.rotate(-i).join.to_i}
    c=a.map{|i| i if Prime.prime?(i)}.compact
    @n<< c and @a-=c if c.length==x.length
end
@a.each{|i|t(i)}
p @n.compact.flatten.uniq.length



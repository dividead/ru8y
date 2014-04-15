x = "Multiple switches may be utilized to optimize for maximum throughput in a multiple network switch topology, when the switches are configured in parallel as part of an isolated network between two or more systems."
def c(x)
    x1, x2 = ('a'..'z').to_a, []
    h1 = Hash[x1.zip x1.reverse]
    x.each_char{|i| /[a-zA-Z]/=~i ?  x2 << h1[i.downcase] : x2 << i}
    x2.join
end
p c(x)

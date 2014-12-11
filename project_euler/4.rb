def pali?(x)
s = x.to_s.split('')
  true if s.reverse == s
end
c=[]
(-999..-900).each do |n|
    (-999..-900).each do |i|
        x = n*i
        c<< x if pali?(x)==true
        break if c.length==1
    end
end
p c
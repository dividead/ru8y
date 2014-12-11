f = [1,2]
while f.last < 4_000_000 do
  f << f[-1] + f[-2] 
end
p f.select{|i| i if i.even?}.reduce(&:+)

# f = [1,2]
# x=0
# sum = 0
# while f[x+1]<4000000 do
#     f<<f[x]+f[x+1]
#     x+=1
#     if f[x]%2==0
#         sum+=f[x]
#     end    
# end
# puts sum #4613732 
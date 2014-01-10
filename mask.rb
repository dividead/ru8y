a,b=[1,2,3,4],[-1,1,1,-1]
#p a.zip(b).map{|i|i.reduce(:*)}
p a.zip(b).map{|i,n|i*n}

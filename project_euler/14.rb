def collatz(x)
a=[]
a<<x
	until x == 1 do 
		if x.odd?
			x=x*3 + 1
			a<<x
		else
			x/=2
			a<<x	
		end
	end
a.length
end
c=[]
n=collatz(999_999)
(-999_999..-500_000).each do |i|
	m=collatz(i.abs)
	c<<[m,i.abs] and n=m if m >=n
end
p c.max		
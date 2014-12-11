a=[0,1]
(2..Float::INFINITY).each do |i|
	a<< a.last+a[(a.length-2)]
	x = a.last.to_s.length
	p i and break if x==1000	
end	
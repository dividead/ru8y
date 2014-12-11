(1..100).each{|i| 
 if i%15==0 
   p "fizzbuzz" 
 elsif i%3==0 
   p "fizz"
 elsif i%5==0 
   p "buzz" 
 else p i
 end
}
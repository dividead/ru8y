f = IO.read("names.txt").gsub(/\W/, ' ').split(" ").sort
az = ('A'..'Z').to_a
sum,x=0,0
(0...f.length).each {|i|
    f[i].each_char {|n| sum+=az.index(n)+1}
sum*=i+1
x+=sum
sum=0}
p x
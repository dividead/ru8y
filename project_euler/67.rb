a = File.open("triangle.txt").inject([]) {|arr,line|
  arr << line.split(' ').map{|x|x.to_i}}
(1...a.length).reverse_each {|i|
    (0...a[i].length-1).reverse_each {|n|
      a[i][n]>a[i][n+1] ? a[i-1][n] += a[i][n] : a[i-1][n] += a[i][n+1]}
a.delete(a.last)}
p a

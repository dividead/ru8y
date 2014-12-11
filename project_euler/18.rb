@a = File.open("18t").inject([]) do |arr,line|
  arr << line.split(' ').map{|x|x.to_i}
end

def solve(row, col) 
   return 0 if row == @a.length
   return @a[row][col] + [solve(row + 1, col), solve(row + 1, col + 1)].max
end

puts solve(0, 0)
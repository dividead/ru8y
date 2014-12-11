def range(s,e,st=1)
  st > 0 ? (s..e).step(st) : (e..s).step(-st).to_a.reverse
end
def sum(x)
  x.reduce(:+)
end

p sum(range(1, 10))# → 55
p range(5, 2, -1)# → [5, 4, 3, 2]
p sum(range(5, 2, -1))
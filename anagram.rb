a = %w(ruby ubyr python thonyp xyz zxe).map{|i| i.split(//)}
def anagram(a)
  @c ||= []
  if a.size > 1
    x = a.shift
    a.each{|i| @c << [i.join,x.join] and a.delete(i) if i.sort == x.sort}
    anagram(a)
  else
    @c
  end
end
p anagram(a)

@gen = 0
def split(a)
  def cut(a)
    c1 = a.clone
    if c1[2] > c1[3]
      x = rand(a[2]*0.40..a[2]*0.60).to_i
      c1[2] = x
      c2 = [a[0]+5+x,a[1],a[2]-x-5,a[3]]
    else
      y = rand(a[3]*0.40..a[3]*0.60).to_i
      c1[3] = y
      c2 = [a[0],a[1]+5+y,a[2],a[3]-y-5]
    end
    (((c1[2] && c1[3]) > 40) && ((c2[2] && c2[3]) > 40)) ? [c1, c2] : a
  end
  a.map!{|i| cut(i)}
  @gen+=1
  @gen < 4 ? split(a.flatten(1)) : (@gen = 0; a)
end
p split([[0,0,400,400]]).flatten.each_slice(4).to_a
:c
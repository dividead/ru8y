require 'set'
a = [1,2,3,4,5]
def ind(a)
    s = Set.new
    x = 0
    a.each do |i|
        return x if s.include?(i)
        x+=1
        s << i
    end
    -1
end

ind(a)

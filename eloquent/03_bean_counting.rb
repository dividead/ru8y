def countChars(x,l)
  x.split(//).select{|i| i if i == l}.size #each_char
end

p countChars("kakkerlak", "k")
def isEven?(x)
  x = -x if x < 0
  if x==1
    false
  elsif x==0
    true
  else
    isEven?(x-2)
  end
end
p isEven?(75)
p isEven?(50)
p isEven?(-1)
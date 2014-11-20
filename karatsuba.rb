def karatsuba(a,b)
  return a*b if (a < 10) or (b < 10)
  x = a.divmod(1000)
  y = b.divmod(1000)
  z2 = karatsuba(x[0],y[0])
  z0 = karatsuba(x[1],y[1])
  z1 = karatsuba((x[0] + x[1]),(y[0]+y[1])) - z2 - z0
  r = z2*1000**2 + z1*1000 +z0
end

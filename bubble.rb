def sort(a)
    a.length.times{(0...a.length-1).each {|i| a[i+1],a[i]=a[i],a[i+1] if a[i]>a[i+1]}}
    a
end

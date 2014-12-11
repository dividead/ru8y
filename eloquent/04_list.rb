def arrayToList(a)
  Hash["value" => a[0], "rest" => a.size > 1 ? arrayToList(a.drop(1)) : nil]
end

def listToArray(h)
  Array[h['value'], (listToArray(h['rest']) unless h['rest'].nil?)].flatten.compact #unless returns nil at the end
end

def prepend(n,h)
  Hash["value" => n, "rest" => h]
end

def nth(h,n)
  n > 0 ? nth(h['rest'], n-=1) : h['value']
end

p arrayToList([10, 20, 30, 40, 50])
# → {value: 10, rest: {value: 20, rest: null}}
p listToArray(arrayToList([10, 20, 30]))
# → [10, 20, 30]
p prepend(10, prepend(20, nil))
# → {value: 10, rest: {value: 20, rest: null}}
p nth(arrayToList([10, 20, 30]), 1)
# → 20
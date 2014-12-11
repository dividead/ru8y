def reverseArray(a)
  b = []
  a.size.times {b << a.pop}
  b
end

def reverseArrayInPlace(a)
  for i in 1..a.size
    a.push(a.delete_at(a.size - i))
  end
  #a #for ["A", "B", "C"]
end

p reverseArray(["A", "B", "C"]) # → ["C", "B", "A"];
arrayValue = [1, 2, 3, 4, 5]
reverseArrayInPlace(arrayValue)
p arrayValue # → [5, 4, 3, 2, 1]
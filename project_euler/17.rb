require 'numbers_and_words'
a=[]
(1..1000).each { |i| a<< i.to_words(hundreds_with_union: true) }
p a.join.gsub(/[\s+-]/,'').length
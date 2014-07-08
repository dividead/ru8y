require 'rqrcode'
@secret = {0=>[false, false, false, false], 1=>[true, false, false, false], 2=>[false, true, false, false], 3=>[false, false, true, false], 
          4=>[false, false, false, true], 5=>[true, true, false, false], 6=>[true, false, true, false], 7=>[true, false, false, true],
          8=>[false, true, true, false], 9=>[false, true, false, true], 'A'=>[false, false, true, true], 'B'=>[true, true, true, false],
          'C'=>[true, true, false, true], 'D'=>[true, false, true, true], 'E'=>[false, true, true, true], 'F'=>[true, true, true, true]}

def aut(x)
  q = RQRCode::QRCode.new(x).modules
  q.push([false]*q.last.size).each do |i| 
    i << false
  end.each_slice(2).to_a.map do |i|
    i1 = i[0].each_slice(2).to_a
    i2 = i[1].each_slice(2).to_a
    i1.zip(i2).flatten.each_slice(4).to_a
  end.flatten(1).map{|i| @secret.key(i)}.join
end

p aut('zodiac')

#qr3 = qr2.map{|i| i.map{|n| n == true ? 1 : 0}}

# a = [[1,0,0,0],[1,1,0,0],[1,1,1,0]]
# x = [[0,0,0,0],[1,1,1,1]] 
# a.each{|i| x += i.permutation(4).to_a.uniq}
# n = Hash[(0...v.size).zip v]

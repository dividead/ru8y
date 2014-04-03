require 'RMagick'
img = Magick::ImageList.new('1.png').first
a = img.get_pixels(0,0,img.columns,img.rows)
#(0..a.size).step(2){|i| a[i],a[i+1]=a[i+1],a[i]}
(0..a.size).step(3){|i| a[i]=a.last}
#a.sort!
img.store_pixels(0,0, img.columns, img.rows, a)
img.write("#{Time.now}.png")

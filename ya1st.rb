^[A-Za-z](?:[A-Za-z\d.-]{0,18}[A-Za-z])?$ #correct one

print "enter your login:"
gets.chomp =~ /^[A-z][[A-z]\d\-\.]{0,18}[[A-z][0-9]]?$/ ? (p "yeh") : (p "meh")


print "enter your login:"
login = gets.chomp
login.length.between?(1,20) ? 
	[login =~ /^[A-z][[A-z]\d\-\.]*[[A-z][0-9]]?$/ ? 
		(p "yep") : (p "nope")] 
	: (p "2long")


print "enter your login:"
login = gets.chomp
if login.length.between?(1,20) 
  if login =~ /^[A-z][[A-z]\d\-\.]*[[A-z][0-9]]?$/
      p "k"
  else
      p "read rules"
  end      
else
  p "too long, try again"
end

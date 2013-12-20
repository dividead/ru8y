print "enter your login:"
login = gets.chomp
login.length.between?(1,20) ? 
	[login =~ /^[a-zA-Z][[a-zA-Z]\d\-\.]*[[a-zA-Z][0-9]]$/ ? 
		(p "yep") : (p "nope")] 
	: (p "2long")


print "enter your login:"
login = gets.chomp
if login.length.between?(1,20) 
  if login =~ /^[a-zA-Z][[a-zA-Z]\d\-\.]*[[a-zA-Z][0-9]]$/
      p "k"
  else
      p "read rules"
  end      
else
  p "too long, try again"
end

`ls`.split("\n").each{|i| p `du -sh #{i}`.split("\t")}
#print name and size of each file in directiry
require 'tumblr_client'
require 'open-uri'

# Authenticate via OAuth
client = Tumblr::Client.new({
  :consumer_key => '-',
  :consumer_secret => '-',
  :oauth_token => '-',
  :oauth_token_secret => '-'
})

# Make the request
#p client.info["user"]["likes"] 
#client.likes["liked_posts"].each{|i|n=i["photos"].last["original_size"]["url"];x=n.split('/').last;open("#{x}",'wb'){|file|file<<open(n).read}}

@links = []
f = open("links.txt", 'r').each_line{|line| @links << line}

client.tagged('kill la kill').each do |i| 
  i.has_key?("photos") ? n = i["photos"].last["original_size"]["url"] : next
  x = n.split('/').last
  unless @links.include?(n+"\n")
    #open("images/tumblr/#{x}",'w') do |file|
    #  file << open(n).read
    #end
    @links << n +"\n" 
  end
end
  
open("links.txt",'w+') do |file|
  @links.each{|line| file << line} 
end

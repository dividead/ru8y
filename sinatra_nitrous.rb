require 'sinatra'
set :bind, '0.0.0.0'
set :port, 3000
#set :environment, :production

get '/' do
  "move along"
end  

error do
  "plz no ;_;"
end

not_found do
  "plz go ;_;"
end
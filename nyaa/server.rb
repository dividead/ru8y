#require 'nyaa-1.0.5'
require 'sinatra'
require 'json'

set :bind, '0.0.0.0'
set :port, 3000
#set :environment, :production
req =[]

get '/' do
  File.read(File.join('public', 'index.html'))
end

get '/c' do
  `rm -r public/json/*`
  'hi'
end

get '/:name' do
  req << {params[:name] => Time.now}
  r = `nyaa -f trusted_only #{params[:name]}`
  name = r.scan(/cache.+\.json/)[0]
  content_type :json
  File.read(File.join('public/json', name))
end

error do
  "plz no ;_;"
end

not_found do
  "plz go ;_;"
end
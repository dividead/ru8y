require 'sinatra'
set :bind, '0.0.0.0'
set :port, 3000

get '/' do
  "move along"
end  

get '/:url' do
  `rm index.html`
  `wget #{params[:url]}`
  send_file 'index.html'
end
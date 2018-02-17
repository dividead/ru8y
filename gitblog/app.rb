require 'sinatra'
set :bind, '0.0.0.0'
set :port, 3000
#set :environment, :production

get '/' do
  @a = []
  Dir["public/posts/*.txt"].each do |d|
    File.open(d, "r") do |f|
      f.each_line do |line|
        @a << line
      end
    end
  end
  erb :main
end 

post '/' do
  x = params[:content]
  if x.size > 0
    File.open("public/posts/#{Time.now.to_i}.txt", 'w') do |f|
        f.write x
    end
  `git add .`
  `git commit -m "#{('a'..'z').to_a.sample(8).join}"`
  `git push`
  end
  redirect '/'
end

error do
  "plz no ;_;"
end

not_found do
  "plz go ;_;"
end
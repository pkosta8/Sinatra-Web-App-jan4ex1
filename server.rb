require 'sinatra'

get '/' do
  redirect to('/home')
end

  get '/home' do
  erb (:index)
end


get '/about_me' do
  erb (:about_me)
end

get '/portfolio' do
  erb (:gallery)
end
end

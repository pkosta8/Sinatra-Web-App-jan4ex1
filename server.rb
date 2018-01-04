require 'sinatra'

get '/' do
  redirect to('/home')
end

  get '/home' do
  erb (:index)
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb (:about_me)
end

get '/favourites' do
  @fav_links = ['terminator2', 'aliens', 'star wars', 'predator', 'rocky']
    erb (:favourites)
end



get '/portfolio' do
  erb (:gallery)
end
end

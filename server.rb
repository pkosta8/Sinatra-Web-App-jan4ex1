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
  @fav_links = [
    '<a href="http://www.imdb.com/title/tt0088247/">terminator2</a>',
    '<a href="http://www.imdb.com/title/tt0090605/">aliens</a>',
    '<a href="http://www.imdb.com/title/tt0076759/">star wars</a>',
    '<a href="http://www.imdb.com/title/tt0093773/">predator</a>',
    '<a href="http://www.imdb.com/title/tt0075148/">rocky</a>'
  ]
    erb (:favourites)
end



get '/portfolio' do
  erb (:gallery)
end

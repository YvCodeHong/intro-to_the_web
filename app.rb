require 'sinatra'

get '/' do
  'Hello!'
end

get '/secret' do
  'This is a secret page'
end

get '/random-cat' do
  @generate_name = %w[Amigo Oscar Frank].sample
  erb(:index)
end

get '/named-cat' do
  @generate_name = params[:name]
    erb(:index)
end

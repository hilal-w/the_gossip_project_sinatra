require 'sinatra'
require 'gossip'

class ApplicationController < Sinatra::Base
  # get '/' do
  #   "<html><head><title>The Gossip Project</title></head><body><h1>Mon super site de gossip !</h1></body></html>"
  # end

#   run! if app_file == $0
# end

  get '/' do
  erb :index
end

 get '/gossips/new/' do  
  erb :new_gossip
end

# post '/gossips/new/' do
#   puts "Ce programme ne fait rien pour le moment, on va donc afficher un message dans le terminal"
# end

post '/gossips/new/' do
  Gossip.new("super_auteur","super gossip").save
end

# post '/gossips/new/' do
#   Gossip.new(info_formulaire_1, info_formulaire_2).save
# end

post '/gossips/new/' do 
	 Gossip.new(params["gossip_author"], params["gossip_content"]).save
	 redirect '/'
	end


end

# binding.pry
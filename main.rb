require 'sinatra'
require 'pony'

get '/' do
 erb :home
end

get '/contact' do
	erb :contact
end

get '/repair' do #we want people to sign in
	erb :repair
end

get '/history' do #this is where they view previous projects, reviews, etc
	erb :history
end

post '/contact_form' do
	@name = params[:name]
	@email = params[:email]
	@message = params[:message]
	puts @name 
	puts @email 
	puts @message

	Pony.mail(to: @email, from: 'lightsaberreapir@gmail.com', subject: @name, body: @message)
	redirect '/form_success'
end

get '/form_success' do
	erb :form_success
end
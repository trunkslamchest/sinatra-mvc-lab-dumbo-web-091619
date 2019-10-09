require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do

		erb :user_input
	end

	post '/piglatinizer' do
	  pl = PigLatinizer.new

		@pig_latin = pl(params[:user_phrase])

		erb :pigLatinizer
	end
end
class WelcomeController < ApplicationController

	def index
		render :plain => "welcome to my cool web site"
	end

end
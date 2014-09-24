class PlanetsController < ApplicationController

	def index
		# Rails does this automatically (by default)	
		# render(:index)
	end

	def new
	end

	def create
		render plain: "I am gonna create #{params[:planet][:name]}."
	end

end
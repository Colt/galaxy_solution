class PlanetsController < ApplicationController

	def index
		@planets = Planet.all
	end

	def new
	end

	def create
		planet = Planet.new(planet_params)
		planet.save()
		redirect_to planets_path
	end

	private

	def planet_params
		params.require(:planet).permit(
			:name,
			:diameter
		)
	end

end
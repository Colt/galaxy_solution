class PlanetsController < ApplicationController

    def index
        @planets = Planet.all
    end

    def show
        @planet = Planet.find params[:id]
    end

    def new
        @planet = Planet.new
    end

    def create
        @planet = Planet.create planet_params

        flash[:notice] = "Your planet has been created."

        redirect_to planets_path
    end

    def edit
        @planet = Planet.find params[:id]
    end

    def update
        @planet = Planet.find params[:id]
        @planet.update planet_params
        flash[:notice] = "Your planet has been updated."

        redirect_to @planet
    end

    def destroy
        @planet = Planet.find params[:id]
        @planet.destroy

        flash[:notice] = "Planet destroyed... you monster!"

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

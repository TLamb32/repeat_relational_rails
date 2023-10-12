class AstronautsController < ApplicationController
 
  def index
    @astronauts = Astronaut.all
    # require 'pry'; binding.pry
  end

  def show
    # require 'pry'; binding.pry
    @astronaut = Astronaut.find(params[:id])
  end
end
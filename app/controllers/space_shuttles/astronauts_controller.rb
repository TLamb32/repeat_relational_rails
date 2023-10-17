class SpaceShuttles::AstronautsController < ApplicationController
  
  def index
    @spaceshuttle = SpaceShuttle.find(params[:id])
    @astronauts = @spaceshuttle.astronauts
  end
  
end
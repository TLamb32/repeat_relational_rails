class SpaceShuttlesController < ApplicationController
  
  def index
    @spaceshuttles = SpaceShuttle.all
  end

  def show
    @spaceshuttle = SpaceShuttle.find(params[:id])
  end
end
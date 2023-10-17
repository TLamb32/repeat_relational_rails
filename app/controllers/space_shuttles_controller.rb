class SpaceShuttlesController < ApplicationController
  
  def index
    @spaceshuttles = SpaceShuttle.all.sort_by_recently_created
  end

  def show
    @spaceshuttle = SpaceShuttle.find(params[:id])
    @astronaut = @spaceshuttle.astronaut_count
  end
end
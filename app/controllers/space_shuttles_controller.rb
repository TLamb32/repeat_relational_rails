class SpaceShuttlesController < ApplicationController
  def index
    @spaceshuttles = SpaceShuttle.all
  end
end
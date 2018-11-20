class HomeController < ApplicationController
  def index
    @studios = Studio.publish.search(params[:search])
  end

  def show
    @studio = Studio.publish.find(params[:id])
    @latitude = @studio.latitude
    @longitude = @studio.longitude
    @address = @studio.address
  end

end


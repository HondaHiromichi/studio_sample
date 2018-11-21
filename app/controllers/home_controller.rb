class HomeController < ApplicationController

  PER = 20

  def index
    @studio = Studio.publish.search(params[:search])
    @studios = @studio.page(params[:page]).per(PER)
  end

  def show
    @studio = Studio.publish.find(params[:id])
    @latitude = @studio.latitude
    @longitude = @studio.longitude
    @address = @studio.address
  end

end


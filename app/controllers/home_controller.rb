class HomeController < ApplicationController
  def index
    @studios = Studio.publish.search(params[:search])
  end

  def show
    @studio = Studio.publish.find(params[:id])
  end

end


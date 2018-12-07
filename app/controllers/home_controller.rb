class HomeController < ApplicationController
  def index
    @studios = Studio.search(params[:search])
  end

  def show
    @studio = Studio.find(params[:id])
  end

end


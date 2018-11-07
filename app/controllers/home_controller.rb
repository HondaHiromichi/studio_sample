class HomeController < ApplicationController
  def index
    @studios = Studio.search(params[:search])
  end
end


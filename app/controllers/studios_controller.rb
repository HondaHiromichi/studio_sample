class StudiosController < ApplicationController
  before_action :authenticate_user!

  def index
    @studios = current_user.studios
  end

  def show
    @studio = current_user.studios.find(params[:id])
  end

  def new
    @studio = Studio.new
  end

  def edit
    @studio = current_user.studios.find(params[:id])
  end

  def create
    @studio = current_user.studios.new(studio_params)
    if @studio.save
      redirect_to @studio, notice: "studioを登録しました"
    else
      render :new
    end
  end

  def update
    @studio = Studio.find(params[:id])
    if @studio.update(studio_params)
      redirect_to @studio, notice: "studioを編集しました"
    else
      render :edit
    end
  end

  def destroy
    @studio = current_user.studios.find(params[:id])
    @studio.destroy
    redirect_to @studio, notice: "studioを削除しました"
  end
  
  private

  def studio_params
    params.require(:studio).permit(:name, :phone, :area, :station, :information, :lowest_price, :price, :business_hours, :room, :url, :address, :sorroundings, :etc)
  end


end

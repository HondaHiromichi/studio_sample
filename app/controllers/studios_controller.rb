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
    @studio.images.build
    @studio.features.build
  end

  def edit
    @studio = current_user.studios.find(params[:id])
  end

  def create
    @studio = current_user.studios.new(studio_params)
    # render studio_params
    if @studio.save
      redirect_to @studio, notice: "studioを登録しました"
    else
      render :new
    end
  end

  def update
    @studio = Studio.find(params[:id])
    @studio.features
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
    params.require(:studio).permit(:name, :phone, :area, :station, :information, :lowest_price, :price,
    :business_hours, :room, :url, :address, :sorroundings, :etc, :post_flag,
    images_attributes: [:id, :studio_id, :sequence, :image_file_name, :image_content_type, :image_file_size, :image],
    features_attributes: [:id, :feature]
    )
  end


end

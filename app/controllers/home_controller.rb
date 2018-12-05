class HomeController < ApplicationController

  PER = 5

  def index
    @q = Studio.publish.ransack(params[:q])
    @q.sorts = 'reviews_count desc' if @q.sorts.empty?
    @studios = @q.result(distinct: true).page(params[:page]).per(PER)
  end

  def search
    @q = Studio.publish.search(search_params)
    @q.sorts = 'reviews_count desc' if @q.sorts.empty?
    @studio = @q.result(distinct: true)
    @studios = @studio.page(params[:page]).per(PER)
  end

  def show
    @studio = Studio.publish.find(params[:id])
  end

  private

  def search_params
    params.require(:q).permit(:name_cont, :station_cont, :area_eq, :s, features_feature_in: [])
  end

end


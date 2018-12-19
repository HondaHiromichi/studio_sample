class HomeController < ApplicationController

  PER = 10

  def index
    @q = Studio.publish.ransack(params[:q])
    @q.sorts = 'reviews_count desc' if @q.sorts.empty?
    @studio = @q.result(distinct: true)
    @studios = @studio.page(params[:page]).per(PER)
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
    params.require(:q).permit(:name_cont, :station_cont, :area_eq, :s, having_all_features_of: [])
  end

end


class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @review = Review.create(user_id: current_user.id, studio_id: params[:studio_id])
    @reviews = Review.where(studio_id: params[:studio_id])
    redirect_to home_path(id: params[:studio_id]), notice: "スタジオにいいねしました。"
  end

  def destroy
    review = Review.find_by(user_id: current_user.id, studio_id: params[:studio_id])
    review.destroy
    redirect_to home_path(id: params[:studio_id]), notice: "このスタジオのいいねを取り消しました。"
  end

end

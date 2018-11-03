class StudiosController < ApplicationController

  def destroy
    @studio = current_user.studios.find(params[:id])
    @studio.images.destroy
    redirect_to edit_studio_path, notice: "画像を削除しました"
  end

end
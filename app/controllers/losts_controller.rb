class LostsController < ApplicationController
  before_action :set_user
  before_action :set_lost, only: :toggle_find

  def create
    respond_to do |format|
      if @user.losts.create! lost_params
        format.html { redirect_to @user, notice: "What you lost was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def toggle_find
    @lost.toggle_find
    redirect_to @user
  end

  private
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_lost
      @lost = Lost.find(params[:id])
    end

    def lost_params
      params.require(:lost).permit(:title, :description, :lost_at, :finded)
    end
end

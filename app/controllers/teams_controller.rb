class TeamsController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def index
  end
  
  def new
    @team = Team.new
    @team.users << current_user
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to root_path, notice:'チームを作成しました'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private
  def team_params
    params.require(:team).permit(:name, user_ids: [])
  end
end

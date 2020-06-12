class TeamsController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  # before_action :set_team, except: [:index]

  def index
  end
  
  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
    @team.users << current_user
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to root_path(@team), notice:'チームを作成しました'
    else
      render :new
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
  end

  private
  def team_params
    params.require(:team).permit(:name, user_ids: [])
  end
end

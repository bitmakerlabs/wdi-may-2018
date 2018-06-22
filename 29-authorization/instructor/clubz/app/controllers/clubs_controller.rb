class ClubsController < ApplicationController

  before_action :require_login, except: [:index]
  before_action :require_ownership, only: [:edit, :update]
  before_action :require_role, except: [:index]

  def index
    @clubs = Club.all
  end

  def show
    @club = Club.find(params[:id])
  end

  def new
    @club = Club.new
  end

  def create
    @club = Club.new(
      name: params[:club][:name],
      description: params[:club][:description],
      user: current_user
    )

    if @club.save
      redirect_to root_path
    else
      flash.now[:alert] = @club.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @club && @club.update(name: params[:club][:name], description: params[:club][:description], user: current_user)
      redirect_to root_path
    else
      flash.now[:alert] = @club.errors.full_messages
      render :edit
    end
  end

  private

  def require_login
    if !current_user
      flash[:alert] = ["You must be logged in"]
      redirect_to new_session_path
    end
  end

  def require_ownership
    @club = Club.find(params[:id])
    if current_user.id != @club.user_id
      flash[:alert] = ["You are not the owner of this club"]
      redirect_to root_path
    end
  end

  def require_role
    if !current_user.role.access_clubs
      flash[:alert] = ["#{current_user.role.name} are not allowed access"]
      redirect_to root_path
    end
  end

end

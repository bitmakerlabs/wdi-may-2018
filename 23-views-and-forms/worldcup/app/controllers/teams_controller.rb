class TeamsController < ApplicationController
  def index
    @team = Team.new
    @teams = Team.all
    render :index
  end

  def create
    # params[:country] # ==> 'Russia' - works for form_tag
    # params[:team][:country] # - works for form_for
    Team.create(country: params[:team][:country], group: params[:team][:group])
    redirect_to '/teams'
  end

  def edit
    @team = Team.find(params[:id])
  end
end

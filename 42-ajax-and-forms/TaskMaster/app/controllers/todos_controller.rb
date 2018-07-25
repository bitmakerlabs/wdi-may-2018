class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new
    @todo.content = params[:todo][:content]

    if @todo.save
      respond_to do |format|
        format.html do
      if request.xhr?
          render partial: 'content'  , locals:{todo: @todo}
      else

      redirect_to root_url
      end
    end
    format.json { render json: @todo}
    end
    end

  end

  def index
    @todos = Todo.all
    @todo = Todo.new
  end
end

class TodosController < ApplicationController
  def new
    @todo = Todos.new
  end

  def create
    @todo = Todos.new(todos_params)
    @todo.save
    redirect_to home_path
  end

  private
    def todos_params
      params.require(:todos).permit(:tasks, :finished)
    end
end
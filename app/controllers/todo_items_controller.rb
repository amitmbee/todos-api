class TodoItemsController < ApplicationController
  before_action :set_todo_item, only: [:show, :update, :destroy]

  # GET /todo_items
  def index
    @todos = TodoItem.all
    render json: @todos, status: :ok
  end

  # POST /todo_items
  def create
    @todo = TodoItem.create!(todo_item_params)
    render json: @todo, status: :created
  end

  # GET /todo_items/:id
  def show
    render json: @todo
  end

  # PUT /todo_items/:id
  def update
    @todo.update(todo_item_params)
    render json: @todo, status: :ok
  end

  # DELETE /todo_items/:id
  def destroy
    @todo.destroy
    render json: @todo, status: :ok
  end

  private

  def todo_item_params
    params.permit(:name, :completed)
  end

  def set_todo_item
    @todo = TodoItem.find(params[:id])
  end
end

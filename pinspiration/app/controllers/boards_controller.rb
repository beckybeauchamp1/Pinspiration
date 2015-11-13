class BoardsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.create(board_params.merge(user: current_user))
    redirect_to boards_path(@board, @user)
  end

  def show
    #  @board = Board.find(params[:id])
  end

  def edit
    #  @board = Board.find(params[:id])
  end

  def update
    @board.update(board_params.merge(user: current_user))
    redirect_to boards_path(@board, @user)
  end

  def destroy
    #@board = Board.find(params[:id])
    @board.destroy
    redirect_to boards_path
  end

  private
  def board_params
    params.require(:board).permit(:name, :description, :photo_url)
  end

  def set_post
    @board = Board.find(params[:id])
  end

end

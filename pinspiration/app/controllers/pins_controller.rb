class PinsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    authenticate_user!
    if current_user
      @pins = current_user.pins
    else
      @pins = Pin.all
    end
  end

  def new
      @board = Board.find(params[:board_id])
      @pin = Pin.new
      @tag = Tag.all
  end

  def create
    @board = Board.find(params[:board_id])
    @tag = Tag.all
    @pin = @board.pins.create!(pin_params.merge(user: current_user))
    redirect_to board_path(@board), notice: "#{@pin.title} was successfully created!"
  end

  def show
    @board = Board.find(params[:board_id])
    # @pin = Pin.find(params[:id])
  end

  def edit
    @board = Board.find(params[:board_id])
    @tags = Tag.all
    @tag
    # @pin  = Pin.find(params[:id])
  end

  def update
    # @pin = Pin.find(params[:id])
    @tag = Tag.all
    @board = Board.find(params[:board_id])
    @pin.update(pin_params.merge(user: current_user))
    redirect_to board_pin_path(@board, @pin)
  end

  def destroy
    # @pin = Pin.find(params[:id])
    @board = Board.find(params[:board_id])
    @pin.destroy
    redirect_to board_path(@board)
  end

  private
  def pin_params
    params.require(:pin).permit(:photo_url, :title, :description)
  end

  def set_post
    @pin = Pin.find(params[:id])
  end

end

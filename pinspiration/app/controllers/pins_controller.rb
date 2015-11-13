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
    @pin = Pin.new
  end

  def create
    @pin = Pin.create!(pin_params.merge(user: current_user))
    redirect_to pin_path(@pin, @user)
  end

  def show
    # @pin = Pin.find(params[:id])
  end

  def edit
    # @pin  = Pin.find(params[:id])
  end

  def update
    # @pin = Pin.find(params[:id])
    @pin.update(pin_params)
    redirect_to pin_path(@pin)
  end

  def destroy
    # @pin = Pin.find(params[:id])
    @pin.destroy
    redirect_to pins_path
  end

  private
  def pin_params
    params.require(:pin).permit(:photo_url, :title, :description)
  end

  def set_post
    @pin = Pin.find(params[:id])
  end

end

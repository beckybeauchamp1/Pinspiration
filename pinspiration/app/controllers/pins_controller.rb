class PinsController < ApplicationController
  def index
    @pins = Pin.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def pin_params
    params.require(:pin).permit(:photo_url, :title)
  end

end

class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def new
    @tags = Tag.all
    @tag = Tag.new
  end

  def create
    @tags = Tag.all
    @tag = Tag.create(tag_params.merge(user: current_user))
    redirect_to tags_path(@tag, @user), notice: "#{@tag.name} was successfully created!"
  end

  def show
     @tag = Tag.find(params[:id])
  end

  def edit
    @tags = Tag.all
    @tag = Tag.find(params[:id])
  end

  def update
    @tags = Tag.all
    @tag.update(_params.merge(user: current_user))
    redirect_to tagss_path(@tag, @user)
  end

  def destroy
    @tags = Tag.all
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to s_path
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end

end

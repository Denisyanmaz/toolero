class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def new
    @tool = Tool.new
  end

  def create
    @user = User.find(params[:user_id])
    @tool = Tool.new(strong_params)
    @tool.user = @user
    if @tool.save
      redirect_to tool_path(@user)
    else
      render :new
    end
  end

  def destroy
    @tool = Tool.find(params[:id])
    @tool.destroy
    redirect_to tools_path(@tool.user)
  end

  private

  def strong_params
    params.require(:tool).permit(:name, :tool_type, :price, :availability, :description, :user_id)
  end

end

class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

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
    @tool = Tool.new(strong_params)
    @tool.user = current_user
    if @tool.save
      redirect_to tool_path(@tool)
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

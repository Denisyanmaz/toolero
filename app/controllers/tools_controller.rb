class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if params[:query].present?
      start_date = Date.parse(params[:from])
      end_date = Date.parse(params[:to])
      @tools = Tool.search_by_name_and_tool_type(params[:query]).to_a.reject { |tool| tool.reservations?(start_date, end_date) }
    else
      @tools = Tool.all
    end
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def show
    @tool = Tool.find(params[:id])
    @reservation = Reservation.new
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
    params.require(:tool).permit(:name, :tool_type, :price, :availability, :description, :user_id, :photo)
  end

end


class ReservationsController < ApplicationController
  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @tool = Tool.find(params[:tool_id])
    @reservation = Reservation.new(strong_params)
    @reservation.user = current_user
    @reservation.tool = @tool
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render "/tools/show"
    end
  end

  private

  def strong_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

end

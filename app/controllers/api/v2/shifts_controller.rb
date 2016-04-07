class Api::V2::ShiftsController < Api::V2::BaseController
  private

  def resource_class
    Shift
  end

  def resource_params
    params.require(:shift).permit(:start_time, :end_time)
  end
end

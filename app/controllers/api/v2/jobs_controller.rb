class Api::V2::JobsController < Api::V2::BaseController
  private

  def resources
    super.includes(:shifts)
  end

  def resource_class
    Job
  end

  def resource_params
    params.require(:job).permit(:title, :pay_rate, :event_id, shifts_attributes: [:start_time, :end_time])
  end
end

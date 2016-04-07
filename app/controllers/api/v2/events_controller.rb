class Api::V2::EventsController < Api::V2::BaseController
  private

  def resource_class
    Event
  end

  def resource_params
    params.require(:event).permit(:title)
  end
end

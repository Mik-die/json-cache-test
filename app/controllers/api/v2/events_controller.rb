class Api::V2::EventsController < Api::V2::BaseController
  private

  def included_associations
    %w(employer jobs jobs.shifts)
  end

  def resource_class
    Event
  end

  def resource_params
    params.require(:event).permit(:title)
  end
end

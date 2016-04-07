class Api::V2::EmployersController < Api::V2::BaseController
  private

  def included_associations
    '*'
  end

  def resource_class
    Employer
  end

  def resource_params
    params.require(:employer).permit(:name, :phone)
  end
end

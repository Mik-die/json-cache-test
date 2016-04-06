class Api::V2::EmployersController < ApplicationController
  def index
    render json: paginate(resources)
  end

  def show
    render json: resource
  end

  def create
    resource = resources.new(resource_params)

    if resource.save
      render json: resource
    else
      render json: {errors: resource.errors}, status: 422
    end
  end

  def update
    if resource.update(resource_params)
      render json: resource
    else
      render json: {errors: resource.errors}, status: 422
    end
  end

  def destroy
    resource.destroy
    render status: 204
  end

  private

  def resource_class
    Employer
  end

  def resource
    resource_class.find params[:id]
  end

  def resources
    resource_class.all
  end

  def resource_params
    params.require(:employer).permit(:name, :phone)
  end

  def paginate(collection)
    collection.page(params[:page]).per(params[:per_page]).tap do |data|
      response.header["X-Total"] =       data.total_count.to_s
      response.header["X-Total-Pages"] = data.num_pages.to_s
      response.header["X-Per-Page"] =    data.limit_value.to_s
      response.header["X-Page"] =        data.current_page.to_s
    end
  end
end

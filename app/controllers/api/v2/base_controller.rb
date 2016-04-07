class Api::V2::BaseController < ApplicationController
  def index
    render json: paginate(resources), include: included_associations
  end

  def show
    render json: resource, include: included_associations
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

  def included_associations
    '*'
  end

  def resource
    resource_class.find params[:id]
  end

  def resources
    resource_class.all
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

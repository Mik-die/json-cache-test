class Api::V2::PingsController < ApplicationController
  def show
    render json: {pong: true}
  end
end

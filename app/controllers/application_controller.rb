class ApplicationController < ActionController::API
  def invalid_endpoint
    render json: { error: "The endpoint is invalid" }, status: 422
  end
end

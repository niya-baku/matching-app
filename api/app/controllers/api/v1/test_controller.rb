class Api::V1::TestController < ApplicationController
  def index
    render json: { status: 200, message: "Railsからはんまな〜"}
  end
end

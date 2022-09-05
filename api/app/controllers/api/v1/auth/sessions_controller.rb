class Api::V1::Auth::SessionsController < ApplicationController
  # 認証確認用コントローラー
  def index
    if current_api_v1_user
      render json: { status: 200, current_user: current_api_v1_user }
    else
      render json: { status: 500, message: "ユーザーが存在しません" }
    end
  end
end

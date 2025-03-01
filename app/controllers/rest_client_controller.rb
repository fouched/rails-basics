class RestClientController < ApplicationController

  def load_users
    base_url = "https://fakestoreapi.com/users"
    @users = call_rest_api(base_url)
  end

  def load_user_cards
    base_url = "https://fakestoreapi.com/users"
    @users = call_rest_api(base_url)
    @image = "https://i.pravatar.cc"
  end

  def show_user_details
    redirect_to LoadUserDetails_path(1)
  end

  def load_user_details
    id = params[:id].to_i

    if id < 1 || id > 10
      redirect_to LoadUserDetails_path(1)
      return
    end

    response = HTTParty.get("https://fakestoreapi.com/users/#{id}")
    if response.code === 200
      @user = response
    end
  end

  def call_rest_api(base_url)
    response = HTTParty.get(base_url)
    response.code === 200 ? response : []
  end
end

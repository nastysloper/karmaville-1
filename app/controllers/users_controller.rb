class UsersController < ApplicationController
  def index
    @users = User.page(1) 
    @start_page = 1
    @end_page = 5
  end

  def page
    # p "PAGE ID: #{params[:page_id]}"
    @users = User.page(params[:page_id]) 
    @start_page = params[:page_id]
    @end_page = (params[:page_id].to_i + 5).to_s
    render :index
  end
end

class UsersController < ApplicationController
  def index
    @users = User.page(1) 
    @start_page = 1
    @end_page = 5
  end
end

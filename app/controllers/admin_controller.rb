class AdminController < ApplicationController
  before_action :require_login
  
  def main
    if current_user.admin
      #OK
      @users = User.all.order('id ASC')
      @guesses = Guess.all
    else 
      redirect_to root_url, notice: "You need to be an Administrator to access that page"
    end
  end
  
  
end

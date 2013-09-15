class UsersController < ApplicationController
  def show
    @profile= current_user
  end

  def index
    @profiles = User.all
  end
end

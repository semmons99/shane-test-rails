class HomeController < ApplicationController
  def index
  end

  helper_method :users

  private

  def users
    User.all
  end
end

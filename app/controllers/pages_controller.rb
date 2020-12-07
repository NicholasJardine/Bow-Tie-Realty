class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @user = current_user
  end
end

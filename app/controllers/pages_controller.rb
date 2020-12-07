class PagesController < ApplicationController
    skip_before_action :authenticate_user!

  def about
        @user = current_user

  end

  def contact
        @user = current_user

  end

  def home
    @user = current_user
  end
end

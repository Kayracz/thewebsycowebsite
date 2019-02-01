class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
  end

  def about
  end

  def contact
  end

  def copyright
  end
end

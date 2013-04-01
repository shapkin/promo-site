class ServicesController < ApplicationController
  def index
    @categories = Category.all
    @services = Service.all
  end

  def show
  end
end
class StaticPagesController < ApplicationController
  def home
    @services = Service.all
  end

  def about
  end

  def contacts
  end
end
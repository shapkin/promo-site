class StaticPagesController < ApplicationController
  def home
    @news = NewsItem.all
  end

  def about
  end

  def contacts
  end
end
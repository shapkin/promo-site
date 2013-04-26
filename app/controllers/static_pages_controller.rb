class StaticPagesController < ApplicationController
  def home
    @news = NewsItem.recent(3)
  end

  def about
  end
end

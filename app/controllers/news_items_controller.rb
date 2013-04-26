class NewsItemsController < ApplicationController
  before_filter :admin_user, except: [:show, :index]

  def new
    @news_item = NewsItem.new
  end

  def create
    @news_item = NewsItem.new(params[:news_item])
    if @news_item.save
      redirect_to news_items_path, flash: { success: "New News added!" }
    else
      render :new
    end
  end

  def index
    @news_items = NewsItem.recent
  end

  def show
    @news_item = get_news_item
  end

  def edit
    @news_item = get_news_item
  end

  def update
    @news_item = get_news_item
    if @news_item.update_attributes(params[:news_item])
      redirect_to news_items_path, flash: { success: "News updated." }
    else
      render :edit
    end
  end

  def destroy
    @news_item = get_news_item
    @news_item.destroy
    redirect_to news_items_path, flash: { success: "News deleted." }
  end

  private

    def admin_user
      redirect_to(new_user_session_path) unless !current_user.nil? && current_user.admin?
    end

    def get_news_item
      NewsItem.find(params[:id])
    end
end
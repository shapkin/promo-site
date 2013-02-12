class NewsItemsController < ApplicationController
  def create
    @news_item = NewsItem.new(params[:news_item])
    if @news_item.save
      redirect_to @news_item, :flash => { success: "New News added!" }
    else
      render :new
    end
  end

  def destroy
    @news_item = NewsItem.find(params[:id])
    @news_item.destroy
    flash[:success] = "News deleted."
    redirect_to news_items_path
  end

  def edit
    @news_item = NewsItem.find(params[:id])
  end

  def index
    @news_items = NewsItem.all
  end

  def new
    @news_item = NewsItem.new
  end

  def show
    @news_item = NewsItem.find(params[:id])
  end

  def update
    @news_item = NewsItem.find(params[:id])
    if @news_item.update_attributes(params[:news_item])
      redirect_to @news_item, :flash => { success: "News updated." }
    else
      render :edit
    end
  end
end
class ServicesController < ApplicationController
  before_filter :admin_user, except: [:show, :index]

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(params[:service])
    if @service.save
      redirect_to services_path, flash: { success: "Service added!" }
    else
      render :new
    end
  end

  def index
    @services = Service.all
  end

  def show
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    if @service.update_attributes(params[:service])
      redirect_to services_path, flash: { success: "Service updated." }
    else
      render :edit
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to services_path, flash: { success: "Service deleted." }
  end

  private

    def admin_user
      redirect_to(new_user_session_path) unless !current_user.nil? && current_user.admin?
    end
end
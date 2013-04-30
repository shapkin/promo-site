class FeedbacksController < ApplicationController
  include ApplicationHelper
  before_filter :authenticate_user!, only: [:create, :approve]
  before_filter :admin_user,         only: [:approve, :destroy]

  def create
    @feedback = current_user.feedbacks.build(params[:feedback])
    @feedback.is_approved = manager?
    @feedback.save
    respond_to do |format|
      format.html do
        unless @feedback.new_record?
          redirect_to feedbacks_path, flash: { success: "New Feedback added!" }
        else
          render :new
        end
      end
      format.js
    end
  end

  def index
    @feedbacks = manager? ? Feedback.all : Feedback.approved
  end

  def show
  end

  def approve
    @feedback = Feedback.find(params[:id])
    @feedback.is_approved = true
    @feedback.save
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
  end

  private

    def admin_user
      redirect_to(new_user_session_path) unless manager?
    end
end

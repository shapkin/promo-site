class FeedbacksController < ApplicationController
  include ApplicationHelper

  def create
    @feedback = current_user.feedbacks.build(params[:feedback])
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
    @feedbacks = Feedback.all
    @feedbacks = @feedbacks.approved unless manager?
  end

  def show
  end

  def destroy
  end
end

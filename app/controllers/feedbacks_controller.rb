class FeedbacksController < ApplicationController
  include ApplicationHelper

  def index
    @feedbacks = Feedback.all
    @feedbacks = @feedbacks.approved unless manager?
  end

  def show
  end

  def destroy
  end

  def create
  end
end

class Feedback < ActiveRecord::Base
  belongs_to :user

  attr_accessible :body, :is_approved
end

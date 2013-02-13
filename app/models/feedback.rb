class Feedback < ActiveRecord::Base
  attr_accessible :body, :is_approved, :name
end

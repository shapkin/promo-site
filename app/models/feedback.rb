class Feedback < ActiveRecord::Base
  default_scope order("created_at desc")
  scope :approved, -> { where(is_approved: true) }
  scope :unapproved, -> { where(is_approved: false) }
  
  belongs_to :user

  attr_accessible :body, :is_approved
end

class Category < ActiveRecord::Base
  has_many :services

  attr_accessible :name

  validates :name, presence: true, length: { maximum: 50 }
end
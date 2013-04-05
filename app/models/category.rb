class Category < ActiveRecord::Base
  has_many :services, dependent: :nullify

  attr_accessible :name

  validates :name, presence: true, length: { maximum: 50 }
end
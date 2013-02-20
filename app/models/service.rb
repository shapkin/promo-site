class Service < ActiveRecord::Base
  belongs_to :category

  attr_accessible :description, :name, :photo, :price
end
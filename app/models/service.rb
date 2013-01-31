class Service < ActiveRecord::Base
  attr_accessible :description, :name, :photo, :price
end

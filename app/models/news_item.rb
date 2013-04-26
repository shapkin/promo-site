class NewsItem < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  attr_accessible :title, :body

  validates :title, presence: true,
                    length: { maximum: 250 }
  validates :body,  presence: true
end

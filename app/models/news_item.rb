class NewsItem < ActiveRecord::Base
  attr_accessible :title, :body

  validates :title, presence: true,
                    length: { maximum: 250 }
  validates :body,  presence: true
end

class Service < ActiveRecord::Base
  belongs_to :category

  attr_accessible :name, :description, :price, :photo

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }

  validates :name, presence: true,
                   length: { maximum: 250 }
  validates :description,      presence: true
  validates :price,            presence: true,
                               numericality: { greater_than: 0 }
  #validates_attachment :photo, content_type: {
  #  content_type: ['image/jpg', 'image/png', 'image/jpeg', 'image/gif', 'image/x-png', 'image/pjpeg'],
  #  message: "does not support %{value}, Only JPG, PNG and GIF formats are allowed",
  #  allow_blank: true
  #}

end

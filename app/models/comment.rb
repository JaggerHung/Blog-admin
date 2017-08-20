class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :visitor
  has_many :notification, as: :notifiable, dependent: :destroy 
end

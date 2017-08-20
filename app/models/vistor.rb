class Vistor < ApplicationRecord
  has_many :notification, as: :notifiable
  has_many :comments
  has_many :messages
end

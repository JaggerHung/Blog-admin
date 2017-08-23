class Visitor < ActiveRecord::Base
  has_many :notification, as: :notifiable, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :messages, dependent: :destroy
end

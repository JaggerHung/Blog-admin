class Visitor < ActiveRecord::Base
  has_many :notification, as: :notifiable, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :messages, dependent: :destroy
<<<<<<< HEAD

  validates :fullname, presence: true
  validates :email, format: {with: /@/, message: 'email is not valid'}
  accepts_nested_attributes_for :comments

=======
>>>>>>> 2669f3179228394ca7f6d327d06f62ebb82ae199
end

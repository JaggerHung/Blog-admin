class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :visitor
  has_many :notification, as: :notifiable, dependent: :destroy

<<<<<<< HEAD
  validates :message, presence: true
  scope :approved, -> {where status: true}

=======
>>>>>>> 2669f3179228394ca7f6d327d06f62ebb82ae199
  def self.matching_fullname_or_message params
    joins(:visitor).where("fullname LIKE ? OR message LIKE ?", "%#{params}%", "%#{params}%")
  end
end

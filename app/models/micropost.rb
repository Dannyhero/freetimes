class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :likes, dependent: :destroy
  has_many :users
  has_many :like_users, through: :likes, source: :user
  
  mount_uploader :image, ImageUploader
  
end

class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #associations
  has_many :posts, dependent: :destroy
  has_many :comments
end

class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #associations
  has_many :posts, dependent: :destroy
  has_many :comments

  #validations
  validates :city, :state, :country, :phone, :gender, presence: true, allow_blank: true
  validates :phone, presence: true, length: { is: 10 }, numericality: { only_integer: true }
end

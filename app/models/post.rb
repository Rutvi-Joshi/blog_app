class Post < ApplicationRecord
  acts_as_taggable_on :tags

  #associations
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many_attached :images

  #validations
  validates :title, :description, presence: true
end

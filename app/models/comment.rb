class Comment < ApplicationRecord

  #associations
  belongs_to :user
  belongs_to :post

  #validations
  validates :content, presence: true
end

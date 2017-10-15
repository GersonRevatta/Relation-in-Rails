class Theme < ApplicationRecord
  has_many :comments , dependent: :delete_all
  belongs_to :category
  validates :title ,:content, presence: true
end
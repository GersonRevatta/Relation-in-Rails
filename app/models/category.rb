class Category < ApplicationRecord
  has_many :themes , dependent: :delete_all
  validates :title , presence: true
end

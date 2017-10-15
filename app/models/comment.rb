class Comment < ApplicationRecord
  belongs_to :theme
  validates :title ,:content, presence: true
end

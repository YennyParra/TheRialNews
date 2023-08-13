class News < ApplicationRecord
  belongs_to :user

  has_many :news
  has_many :newsComments
end

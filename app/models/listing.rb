class Listing < ApplicationRecord

  belongs_to :category
  belongs_to :user
  has_many :responses
  has_many :reports


end

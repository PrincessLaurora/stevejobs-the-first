class Listing < ApplicationRecord

  belongs_to :category
  belongs_to :user
  has_many :responses
  has_many :reports

  validates_presence_of :title, :company, :location, :employment_type, :description, :requirements, :retribution
end

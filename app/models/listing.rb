class Listing < ApplicationRecord

  belongs_to :category
  belongs_to :user
  has_many :responses
  has_many :reports

  validates_presence_of :title, :company, :location, :employment_type, :description, :requirements, :retribution, :category_title


  def category_title=(title)
     self.category = Category.find_or_create_by(title: title)
  end

   def category_title
      self.category ? self.category.title : nil
    end

end

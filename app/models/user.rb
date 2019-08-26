class User < ApplicationRecord
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

  has_many :listings
  has_many :responses, through: :listings
  has_many :reports, through: :listings


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.name = auth.info.name
    user.uid = auth.info.nuid
    user.email = auth.info.email
    user.password = Devise.friendly_token[0, 20]
  end
end

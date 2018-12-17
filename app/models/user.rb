class User < ApplicationRecord
  has_many :buys
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :selfie, PhotoUploader
  mount_uploader :document, PhotoUploader


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

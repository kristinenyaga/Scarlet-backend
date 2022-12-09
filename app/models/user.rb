class User < ApplicationRecord
  has_many :articles
  has_secure_password
  validates :email,presence: :true
  validates :firstname,presence: :true
  validates :lastname,presence: :true
  validates :image_url,presence: :true
  # validates :password,presence: :true


  

end

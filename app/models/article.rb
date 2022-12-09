class Article < ApplicationRecord
  belongs_to :user
  validates :category, inclusion: { in: %w(Business Sports Travel), message: "must be one of Business,Sports,Travel"}
  validates :title,presence: :true
  validates :category,presence: :true
  validates :content,presence: :true
  validates :image_url,presence: :true
end

class Cake < ApplicationRecord
  enum category: [:birthday, :wedding, :custom]
  has_many :line_items, dependent: :destroy
  has_one_attached :image
end

class Cake < ApplicationRecord
  enum category: [:birthday, :wedding, :custom]
  has_one_attached :image
end

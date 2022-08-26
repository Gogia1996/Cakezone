class Order < ApplicationRecord
  has_many :cakes
  accepts_nested_attributes_for :cakes
  has_one :line_items, dependent: :destroy
  enum state: [:cart, :completed, :confirmed ,:rejected]
  belongs_to :user
end

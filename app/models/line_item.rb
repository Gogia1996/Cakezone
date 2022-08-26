class LineItem < ApplicationRecord
  belongs_to :cake
  belongs_to :order
end

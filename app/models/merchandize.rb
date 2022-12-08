class Merchandize < ApplicationRecord
  belongs_to :merchant
  validates :category, inclusion: { in: %w(Men Women Kids Unisex) }

    has_many :reviews
    has_many :buyers, through: :reviews
    
end

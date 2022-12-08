class Review < ApplicationRecord
  belongs_to :merchandize
  belongs_to :buyer
end

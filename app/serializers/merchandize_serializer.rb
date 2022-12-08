class MerchandizeSerializer < ActiveModel::Serializer
  # belongs_to :merchant
   attributes :id, :name, :category, :image_url, :merchant_id, :price
end

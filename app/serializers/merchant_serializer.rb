class MerchantSerializer < ActiveModel::Serializer
  attributes :id, :name, :profile, :email, :password_digest, :merchandizes
end

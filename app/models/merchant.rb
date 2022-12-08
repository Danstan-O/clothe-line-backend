class Merchant < ApplicationRecord
    has_many :merchandizes

    validates :name, presence: true
    validates :password, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true

    has_secure_password
end

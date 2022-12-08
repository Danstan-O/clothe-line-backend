class Buyer < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :merchandize, through: :reviews

    validates :username, presence: true
    #  validates :password, presence: true
     validates :email, presence: true
end

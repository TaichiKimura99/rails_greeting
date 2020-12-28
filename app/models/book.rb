class Book < ApplicationRecord
    validates :title,presence: true
    validates :price,numericality: {only_integer: true}
    #1対多にするため
    has_many :rentals
    has_many :users,through: :rentals
end

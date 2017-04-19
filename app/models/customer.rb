class Customer < ApplicationRecord
   has_many :stocks, dependent: :destroy
  validates :fname, presence: true, length: {minimum:3}
end

class Company < ApplicationRecord
	has_many :stocks , inverse_of: :Company
	has_many :phones, as: :callable
end

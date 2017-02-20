class Event < ApplicationRecord
	has_many :attendances
	has_many :users, through: :attendances

	validates_numericality_of :price, greater_than_or_equal_to: 0 
end

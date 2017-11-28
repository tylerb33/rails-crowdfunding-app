class Contribution < ApplicationRecord
	has_many :gifts
	belongs_to :project
end

class Collecte < ApplicationRecord

	has_many :articles

	validates :name,
	presence: true,
	length: { in: 3..15 }
end

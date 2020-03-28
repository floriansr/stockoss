class Article < ApplicationRecord

    belongs_to :collecte


	validates :name,
	presence: true,
	length: { in: 3..15 }

	validates :location, with: /^[A-Ea-e0-5]+$/,
	presence: true,
	length: { is: 2 }
end
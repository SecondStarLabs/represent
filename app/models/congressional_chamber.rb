class CongressionalChamber < ApplicationRecord
    has_many :congressional_terms
    has_many :congresses, through: :congressional_terms
end

class CongressionalChamber < ApplicationRecord
    # relation with the congress
    has_many :congressional_terms
    has_many :congresses, through: :congressional_terms

    # relation with the congressional_members
    has_many :terms
    has_many :congressional_members, through: :terms
end

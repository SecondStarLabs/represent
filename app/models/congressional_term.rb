class CongressionalTerm < ApplicationRecord
  belongs_to :congress
  belongs_to :congressional_chamber
end

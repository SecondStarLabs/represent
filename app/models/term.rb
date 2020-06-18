class Term < ApplicationRecord
  has_many    :committee_memberships
  has_many    :subcommittee_memberships
  belongs_to  :congress
  belongs_to  :congressional_member
  belongs_to  :congressional_chamber
end

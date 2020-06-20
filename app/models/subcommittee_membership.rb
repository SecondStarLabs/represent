class SubcommitteeMembership < ApplicationRecord
  belongs_to :term
  belongs_to :subcommittee
end

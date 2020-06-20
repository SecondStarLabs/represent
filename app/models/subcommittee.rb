class Subcommittee < ApplicationRecord
  has_many    :subcommittee_memberships
  belongs_to  :congress
end

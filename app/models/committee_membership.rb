class CommitteeMembership < ApplicationRecord
  belongs_to :term
  belongs_to :committee
end

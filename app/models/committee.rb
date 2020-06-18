class Committee < ApplicationRecord
    has_many :committee_memberships
    belongs_to :congress
end

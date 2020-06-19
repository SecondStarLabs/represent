class Term < ApplicationRecord
  has_many    :committee_memberships
  has_many    :subcommittee_memberships
  belongs_to  :congress
  belongs_to  :congressional_member
  belongs_to  :congressional_chamber

  def self.find_or_create_entry(congressional_member: , congress: , congressional_chamber: )
    if self.where(congressional_member: congressional_member).where(congress: congress).length == nil
      term = self.create(congress: congress, congress_member: congress_member, congressional_chamber: congressional_chamber)
    else
      term = self.where(congressional_member: congressional_member).find_by(congress: congress)
    end
     term
  end
end

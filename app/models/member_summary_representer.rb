class MemberSummaryRepresenter < Representable::Decorator
  include Representable::JSON

  property :id
  property :first_name
  property :last_name
  property :middle_name
  property :suffix
  property :link
  property :party
  property :state
  property :next_election
  property :twitter_account
end

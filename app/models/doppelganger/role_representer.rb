require "representable/json/collection"
class Doppelganger::RoleRepresenter < Representable::Decorator
    include Representable::JSON

    property :congress
    property :chamber
    property :title
    property :short_title
    property :state
    property :party
    property :leadership_role
    property :fec_candidate_id
    property :seniority
    property :district
    property :at_large
    property :ocd_id
    property :start_date
    property :end_date
    property :office
    property :phone
    property :fax
    property :contact_form
    property :cook_pvi
    property :dw_nominate
    property :ideal_point
    property :next_election
    property :total_votes
    property :missed_votes
    property :total_present
    property :senate_class
    property :state_rank
    property :lis_id
    property :bills_sponsored
    property :bills_cosponsored
    property :missed_votes_pct
    property :votes_with_party_pct
    property :votes_against_party_pct

end
require "representable/json/collection"
class Doppelganger::MemberRepresenter < Representable::Decorator
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

    property :member_id 
    property :first_name 
    property :middle_name 
    property :last_name 
    property :suffix 
    property :date_of_birth 
    property :gender 
    property :url 
    property :times_topics_url 
    property :times_tag 
    property :govtrack_id 
    property :cspan_id 
    property :votesmart_id 
    property :icpsr_id 
    property :twitter_account 
    property :facebook_account 
    property :youtube_account 
    property :crp_id 
    property :google_entity_id 
    property :rss_url 
    property :in_office
    property :current_party 
    property :most_recent_vote 
    property :last_updated 

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

    # collection :roles, decorator: RoleRepresenter, class: Role
end
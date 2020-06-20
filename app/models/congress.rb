class Congress < ApplicationRecord
  has_many :congressional_terms
  has_many :terms
  has_many :congressional_members, through: :terms
  
  
  def self.say_hello
    "hello"
  end

  def self.assemble(congress_number)
    ## The purpose of this method is to flesh out a particular session of 
    ## congress. Populate the Senate and the House with their members.  
    ## Instantiate the committees and subcommittes.

    congress    = Congress.find_or_create_by(id: congress_number)
    senators    = PropublicaClient.new(congress_number: congress_number).list_senate_members
    house_reps  = PropublicaClient.new(congress_number: congress_number).list_house_members
    

    self.assemble_chamber(chamber_members: senators, congress_number: congress_number)
    self.assemble_chamber(chamber_members: house_reps, congress_number: congress_number)

    # for another day
    # self.populate_committees(chamber_members: senators, congress_number: congress_number)

    # for another day
    # self.populate_committees(chamber_members: house_reps, congress_number: congress_number)
  end

  def self.assemble_chamber(chamber_members: ,congress_number:)
    congress  = Congress.find_or_create_by!(id: congress_number)

    if chamber_members.first.chamber == "senate"
      chamber_name = "Senate"
    else
      chamber_name = "House"      
    end

    chamber = CongressionalChamber.find_or_create_by!(name: chamber_name)
    # bind the chamber to the selected congress with congressional_term
    # as a join
    congressional_term = chamber.congressional_terms.find_or_create_by!(congress: congress)

    chamber_members.each do |chamber_member|
      member_data = PropublicaClient.new(congress_number: congress_number).show_member(chamber_member.bio_directory_id)

      puts member_data


      congressional_member = CongressionalMember.create_or_update_member(member_data)

      # we are only gathering the term of the congress 
      # selected, not all of the terms of the 
      # congressional member
      cm_term = member_data.terms.find {|i| i.congress }
      cm_term_congress = Congress.find(cm_term.congress)
      puts cm_term
      puts "### /// Term: congress - #{congress.id}, chamber - #{chamber.name}"

      # term = congressional_member.terms.create_or_find_by!(congress: cm_term_congress, congressional_chamber: chamber)

      term = Term.find_or_create_entry(congress: cm_term_congress, congressional_chamber: chamber, congressional_member: congressional_member)

      term.update(title: cm_term.title, 
        short_title: cm_term.short_title, 
        state: cm_term.state, 
        party: cm_term.party, 
        leadership_role: cm_term.leadership_role, 
        fec_candidate_id: cm_term.fec_candidate_id, 
        seniority: cm_term.seniority, 
        district: cm_term.district, 
        at_large: cm_term.at_large, 
        ocd_id: cm_term.ocd_id, 
        start_date: cm_term.start_date, 
        end_date: cm_term.end_date, 
        office: cm_term.office, 
        phone: cm_term.phone, 
        fax: cm_term.fax, 
        contact_form: cm_term.contact_form, 
        cook_pvi: cm_term.cook_pvi, 
        dw_nominate: cm_term.dw_nominate, 
        ideal_point: cm_term.ideal_point, 
        next_election: cm_term.next_election, 
        total_votes: cm_term.total_votes, 
        missed_votes: cm_term.missed_votes, 
        total_present: cm_term.total_present, 
        senate_class: cm_term.senate_class, 
        state_rank: cm_term.state_rank, 
        lis_id: cm_term.lis_id, 
        bills_sponsored: cm_term.bills_sponsored, 
        bills_cosponsored: cm_term.bills_cosponsored, 
        missed_votes_pct: cm_term.missed_votes_pct, 
        votes_with_party_pct: cm_term.votes_with_party_pct, 
        votes_against_party_pct: cm_term.votes_against_party_pct
      )
      
    end
  end

  # def self.populate_committees(chamber_members:, congress_number:)
    
  # end

  # def self.populate_subcommittees(chamber_members:, congress_number:)
    
  # end

end

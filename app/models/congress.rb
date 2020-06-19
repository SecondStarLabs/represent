class Congress < ApplicationRecord
  has_many :congressional_terms
  has_many :congressional_memberships
  has_many :congressional_members, through: :congressional_memberships
  
  
  def self.say_hello
    "hello"
  end

  def self.assemble(congress_number)
    ## The purpose of this method is to flesh out a particular session of 
    ## congress. Populate the Senate and the House with their members.  
    ## Instantiate the committees and subcommittes.

    congress  = Congress.find_or_create_by(id: congress_number)
    senators  = PropublicaClient.new(congress_number: congress_number).list_senate_members
    house_reps     = PropublicaClient.new(congress_number: congress_number).list_house_members
    

    self.assemble_chamber(chamber_members: senators, congress_number: congress_number)
    self.assemble_chamber(chamber_members: house_reps, congress_number: congress_number)

    # for another day
    # self.populate_committees(chamber_members: senators, congress_number: congress_number)

    # for another day
    # self.populate_committees(chamber_members: house_reps, congress_number: congress_number)
  end

  def self.assemble_chamber(chamber_members: ,congress_number:)
    congress  = Congress.find_or_create_by(id: congress_number)

    if chamber_members == "senators"
      chamber_name = "Senate"
    else
      chamber_name = "House"      
    end

    chamber = CongressionalChamber.find_or_create_by(name: chamber_name)
    # bind the chamber to the selected congress with congressional_term
    # as a join
    congressional_term = chamber.congressional_terms.find_or_create_by(congress: congress)

    chamber_members.each do |chamber_member|
      member_data = PropublicaClient.new(congress_number: congress_number).show_member(chamber_member.bio_directory_id)

      puts member_data


      congressional_member = CongressionalMember.create_or_update_member(member_data)

      term = Term.find_or_create_entry(congressional_member: congressional_member, congress: congress, congressional_chamber: chamber)
    end
  end

  # def self.populate_committees(chamber_members:, congress_number:)
    
  # end

  # def self.populate_subcommittees(chamber_members:, congress_number:)
    
  # end

end

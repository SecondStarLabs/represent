class Congress < ApplicationRecord
  has_many: :congressional_memberships
  has_many: :congressional_members, through: :congressional_memberships
  
  
  def self.say_hello
    "hello"
  end

  def self.assemble(congress_number)
    senate  = PropublicaClient.new(congress_number: congress_number).list_senate_members
    

    self.assemble_chamber(chamber: senate, congress_number: congress_number)
    self.assemble_chamber(chamber: house, congress_number: congress_number)
  end

  def self.assemble_chamber(chamber: ,congress_number:)
    chamber.each do |chamber_member|
      member_data = PropublicaClient.new(congress_number: congress_number).show_member(chamber_member.bio_directory_id)

      puts member_data

      congressional_member = CongressionalMember.create_or_update_member(member_data)

      congressional_membership = congressional_member.congressional_memberships.create()
    end
    
  end

end

class Congress < ApplicationRecord
  belongs_to :congressional_member
  belongs_to :congressional_chamber

  def self.say_hello
    "hello"
  end

  def self.assemble(congress_number)
    senate  = PropublicaClient.new(congress_number: congress_number).list_senate_members
    house   = PropublicaClient.new(congress_number: congress_number).list_house_members

    self.assemble_chamber(chamber: senate, congress_number: congress_number)
    self.assemble_chamber(chamber: house, congress_number: congress_number)
    # senate.each do |senator|
    #   member_data = PropublicaClient.new(congress_number: congress_number).show_member(senator.bio_directory_id)

    #   comgressional_member = CongressionalMember.create_or_update_member(member_data)
    # end
  end

  def self.assemble_chamber(chamber: ,congress_number:)
    chamber.each do |chamber_member|
      member_data = PropublicaClient.new(congress_number: congress_number).show_member(chamber_member.bio_directory_id)

      puts member_data

      comgressional_member = CongressionalMember.create_or_update_member(member_data)
    end
    
  end

end

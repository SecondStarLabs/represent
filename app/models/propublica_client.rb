class PropublicaClient
      attr_reader :api_key, :congress_number

    def initialize(api_key: Rails.application.credentials.dig(:propublica, :api_key), congress_number: 116)
        @api_key            = api_key
        @congress_number    = congress_number
    end

    def client
        pp = ProPublica.new(api_key)
        pp.config(api_key)
        pp
    end

    def show_member(congressional_id) #congressional_id must be string
        member_info = client.get_member("#{congressional_id}")        
        member = MemberManager.new(member_info: member_info).create    
    end

    def list_house_members
        hash_list_of_reps = client.get_house_members(congress_number)
        members = Array.new 

        hash_list_of_reps.each do |rep|
            member = MemberManager.new(member_info: rep).create    
            members << member
        end
        members
    end

    def list_senate_members
        hash_list_of_reps = client.get_senate_members(congress_number)
        members = Array.new 

        hash_list_of_reps.each do |senator|
            member = MemberManager.new(member_info: senator).create    
            member.congress_number  = congress_number
            member.chamber          = "senate"
            members << member
        end
        members
    end
end
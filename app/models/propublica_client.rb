class PropublicaClient
      attr_reader :api_key

    def initialize(api_key: )
        @api_key = api_key
    end

    def client
        pp = ProPublica.new(api_key)
        pp.config(api_key)
        pp
    end

    def show_member(congressional_id) #congressional_id must be string
        member_info = client.get_member("#{congressional_id}")        
        member = MemberMaker.new(member_info: member_info).create    
    end

    def list_house_members(congress_number)
        hash_list_of_reps = client.get_house_members(congress_number)
        members = Array.new 

        hash_list_of_reps.each do |rep|
            member = MemberMaker.new(member_info: rep).create    
            members << member
        end
        members
    end

    def list_senate_members(congress_number)
        hash_list_of_reps = client.get_senate_members(congress_number)
        members = Array.new 

        hash_list_of_reps.each do |senator|
            member = MemberMaker.new(member_info: senator).create    
            members << member
        end
        members
    end
end
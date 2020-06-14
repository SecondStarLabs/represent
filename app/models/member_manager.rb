class MemberManager
    attr_reader :member, :member_info

    def initialize(member: Member.new, member_info: )
        @member         = member
        @member_info    = member_info
    end

    def create
        if member_info.length > 8 # result of #get_member, not #get_house_members or #get_senate_members
            MemberRepresenter.new(member).from_json(member_info.to_json)
        else
            MemberSummaryRepresenter.new(member).from_json(member_info.to_json)            
        end
        member.bio_directory_id = member.id
        member.delete_field("id")
        member
    end
end
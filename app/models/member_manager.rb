require 'active_support'
require 'active_support/all'    
class MemberManager
    attr_reader :member, :term, :member_info, :committee_membership

    def initialize(member: Member.new, 
        committee_membership: CmCommitteeMembership.new, 
        member_info: )

        @member         = member
        @term          = term
        @member_info    = member_info
    end

    def create
        if member_info.length > 8 # result of #get_member, not #get_house_members or #get_senate_members
            Doppelganger::MemberRepresenter.new(member).from_json(member_info.to_json)

            roles = member_info.fetch("roles")
            member_terms = create_terms(roles)
            member.terms = member_terms


        else
            Doppelganger::MemberSummaryRepresenter.new(member).from_json(member_info.to_json)            
        end
        member.bio_directory_id = member.id
        member.delete_field("id")
        member
    end

    def create_terms(roles)
        terms = []
        roles.each do |role|
            term = CmTerm.new
            Doppelganger::RoleRepresenter.new(term).from_json(role.to_json)  

            term.congress   = term.congress.to_i
            term.start_date = term.start_date.to_date
            term.end_date   = term.end_date.to_date
            
            committees = role.fetch("committees")
            role_committees = create_committee_memberships(committees)
            puts "role_committees #{role_committees}"
            term.committee_memberships = role_committees
            
            subcommittees = role.fetch("subcommittees")
            role_subcommittees = create_subcommittee_memberships(subcommittees)
            term.subcommittee_memberships = role_subcommittees
            
            terms << term
        end
        terms        
    end

    def create_committee_memberships(committees)
        committee_memberships = []
        committees.each do |committee|
            cm = CmCommitteeMembership.new
            Doppelganger::RoleCommitteeRepresenter.new(cm).from_json(committee.to_json)                
            cm.begin_date  = cm.begin_date.to_date
            cm.end_date    = cm.end_date.to_date
            committee_memberships << cm
        end
        committee_memberships
    end

    ## To do!
    def create_subcommittee_memberships(subcommittees)
        subcommittee_memberships = []
        subcommittees.each do |subcommittee|
            scm = CmSubcommitteeMembership.new
            Doppelganger::RoleSubcommitteeRepresenter.new(scm).from_json(subcommittee.to_json)
            scm.begin_date  = scm.begin_date.to_date
            scm.end_date    = scm.end_date.to_date
            subcommittee_memberships << scm
        end
        subcommittee_memberships
    end


end
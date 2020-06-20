class CongressionalMember < ApplicationRecord
    has_many :terms
    has_many :congresses, through: :terms

    def self.create_or_update_member(member_data) #in an OpenStruct
        @congressional_member = CongressionalMember.find_or_create_by(bio_directory_id: member_data.bio_directory_id)
        @congressional_member.update(first_name: member_data.first_name,
            middle_name:        member_data.middle_name,
            last_name:          member_data.last_name,
            suffix:             member_data.suffix,
            title:              member_data.title,
            short_title:        member_data.short_title,
            date_of_birth:      member_data.date_of_birth,
            gender:             member_data.gender,
            party:              member_data.party,
            leadership_role:    member_data.leadership_role,
            twitter_account:    member_data.twitter_account,
            facebook_account:   member_data.facebook_account,
            youtube_account:    member_data.youtube_account,
            govtrack_id:        member_data.govtrack_id,
            cspan_id:           member_data.cspan_id,
            votesmart_id:       member_data.votesmart_id,
            icpsr_id:           member_data.icpsr_id,
            crp_id:             member_data.crp_id,
            google_entity_id:   member_data.google_entity_id,
            fec_candidate_id:   member_data.fec_candidate_id,
            url:                member_data.url,
            rss_url:            member_data.rss_url,
            contact_form:       member_data.contact_form,
            in_office:          member_data.in_office,
            cook_pvi:           member_data.cook_pvi
        )
        @congressional_member
    end

end

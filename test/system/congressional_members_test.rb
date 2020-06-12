require "application_system_test_case"

class CongressionalMembersTest < ApplicationSystemTestCase
  setup do
    @congressional_member = congressional_members(:one)
  end

  test "visiting the index" do
    visit congressional_members_url
    assert_selector "h1", text: "Congressional Members"
  end

  test "creating a Congressional member" do
    visit congressional_members_url
    click_on "New Congressional Member"

    fill_in "Bio directory", with: @congressional_member.bio_directory_id
    fill_in "Contact form", with: @congressional_member.contact_form
    fill_in "Cook pvi", with: @congressional_member.cook_pvi
    fill_in "Crp", with: @congressional_member.crp_id
    fill_in "Cspan", with: @congressional_member.cspan_id
    fill_in "Date of birth", with: @congressional_member.date_of_birth
    fill_in "Dw nominate", with: @congressional_member.dw_nominate
    fill_in "Facebook account", with: @congressional_member.facebook_account
    fill_in "Fax", with: @congressional_member.fax
    fill_in "Fec candidate", with: @congressional_member.fec_candidate_id
    fill_in "First name", with: @congressional_member.first_name
    fill_in "Gender", with: @congressional_member.gender
    fill_in "Google entity", with: @congressional_member.google_entity_id
    fill_in "Govtrack", with: @congressional_member.govtrack_id
    fill_in "Icpsr", with: @congressional_member.icpsr_id
    fill_in "Ideal point", with: @congressional_member.ideal_point
    fill_in "In office", with: @congressional_member.in_office
    fill_in "Last name", with: @congressional_member.last_name
    fill_in "Leadership role", with: @congressional_member.leadership_role
    fill_in "Lis", with: @congressional_member.lis_id
    fill_in "Middle name", with: @congressional_member.middle_name
    fill_in "Missed votes", with: @congressional_member.missed_votes
    fill_in "Missed votes pct", with: @congressional_member.missed_votes_pct
    fill_in "Next election", with: @congressional_member.next_election
    fill_in "Ocd", with: @congressional_member.ocd_id
    fill_in "Office", with: @congressional_member.office
    fill_in "Party", with: @congressional_member.party
    fill_in "Phone", with: @congressional_member.phone
    fill_in "Rss url", with: @congressional_member.rss_url
    fill_in "Senate class", with: @congressional_member.senate_class
    fill_in "Seniority", with: @congressional_member.seniority
    fill_in "Short title", with: @congressional_member.short_title
    fill_in "State", with: @congressional_member.state
    fill_in "State rank", with: @congressional_member.state_rank
    fill_in "Suffix", with: @congressional_member.suffix
    fill_in "Title", with: @congressional_member.title
    fill_in "Total present", with: @congressional_member.total_present
    fill_in "Total votes", with: @congressional_member.total_votes
    fill_in "Twitter account", with: @congressional_member.twitter_account
    fill_in "Url", with: @congressional_member.url
    fill_in "Votes against party pct", with: @congressional_member.votes_against_party_pct
    fill_in "Votes with party pct", with: @congressional_member.votes_with_party_pct
    fill_in "Votesmart", with: @congressional_member.votesmart_id
    fill_in "Youtube account", with: @congressional_member.youtube_account
    click_on "Create Congressional member"

    assert_text "Congressional member was successfully created"
    click_on "Back"
  end

  test "updating a Congressional member" do
    visit congressional_members_url
    click_on "Edit", match: :first

    fill_in "Bio directory", with: @congressional_member.bio_directory_id
    fill_in "Contact form", with: @congressional_member.contact_form
    fill_in "Cook pvi", with: @congressional_member.cook_pvi
    fill_in "Crp", with: @congressional_member.crp_id
    fill_in "Cspan", with: @congressional_member.cspan_id
    fill_in "Date of birth", with: @congressional_member.date_of_birth
    fill_in "Dw nominate", with: @congressional_member.dw_nominate
    fill_in "Facebook account", with: @congressional_member.facebook_account
    fill_in "Fax", with: @congressional_member.fax
    fill_in "Fec candidate", with: @congressional_member.fec_candidate_id
    fill_in "First name", with: @congressional_member.first_name
    fill_in "Gender", with: @congressional_member.gender
    fill_in "Google entity", with: @congressional_member.google_entity_id
    fill_in "Govtrack", with: @congressional_member.govtrack_id
    fill_in "Icpsr", with: @congressional_member.icpsr_id
    fill_in "Ideal point", with: @congressional_member.ideal_point
    fill_in "In office", with: @congressional_member.in_office
    fill_in "Last name", with: @congressional_member.last_name
    fill_in "Leadership role", with: @congressional_member.leadership_role
    fill_in "Lis", with: @congressional_member.lis_id
    fill_in "Middle name", with: @congressional_member.middle_name
    fill_in "Missed votes", with: @congressional_member.missed_votes
    fill_in "Missed votes pct", with: @congressional_member.missed_votes_pct
    fill_in "Next election", with: @congressional_member.next_election
    fill_in "Ocd", with: @congressional_member.ocd_id
    fill_in "Office", with: @congressional_member.office
    fill_in "Party", with: @congressional_member.party
    fill_in "Phone", with: @congressional_member.phone
    fill_in "Rss url", with: @congressional_member.rss_url
    fill_in "Senate class", with: @congressional_member.senate_class
    fill_in "Seniority", with: @congressional_member.seniority
    fill_in "Short title", with: @congressional_member.short_title
    fill_in "State", with: @congressional_member.state
    fill_in "State rank", with: @congressional_member.state_rank
    fill_in "Suffix", with: @congressional_member.suffix
    fill_in "Title", with: @congressional_member.title
    fill_in "Total present", with: @congressional_member.total_present
    fill_in "Total votes", with: @congressional_member.total_votes
    fill_in "Twitter account", with: @congressional_member.twitter_account
    fill_in "Url", with: @congressional_member.url
    fill_in "Votes against party pct", with: @congressional_member.votes_against_party_pct
    fill_in "Votes with party pct", with: @congressional_member.votes_with_party_pct
    fill_in "Votesmart", with: @congressional_member.votesmart_id
    fill_in "Youtube account", with: @congressional_member.youtube_account
    click_on "Update Congressional member"

    assert_text "Congressional member was successfully updated"
    click_on "Back"
  end

  test "destroying a Congressional member" do
    visit congressional_members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Congressional member was successfully destroyed"
  end
end

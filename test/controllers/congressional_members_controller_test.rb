require 'test_helper'

class CongressionalMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @congressional_member = congressional_members(:one)
  end

  test "should get index" do
    get congressional_members_url
    assert_response :success
  end

  test "should get new" do
    get new_congressional_member_url
    assert_response :success
  end

  test "should create congressional_member" do
    assert_difference('CongressionalMember.count') do
      post congressional_members_url, params: { congressional_member: { bio_directory_id: @congressional_member.bio_directory_id, contact_form: @congressional_member.contact_form, cook_pvi: @congressional_member.cook_pvi, crp_id: @congressional_member.crp_id, cspan_id: @congressional_member.cspan_id, date_of_birth: @congressional_member.date_of_birth, dw_nominate: @congressional_member.dw_nominate, facebook_account: @congressional_member.facebook_account, fax: @congressional_member.fax, fec_candidate_id: @congressional_member.fec_candidate_id, first_name: @congressional_member.first_name, gender: @congressional_member.gender, google_entity_id: @congressional_member.google_entity_id, govtrack_id: @congressional_member.govtrack_id, icpsr_id: @congressional_member.icpsr_id, ideal_point: @congressional_member.ideal_point, in_office: @congressional_member.in_office, last_name: @congressional_member.last_name, leadership_role: @congressional_member.leadership_role, lis_id: @congressional_member.lis_id, middle_name: @congressional_member.middle_name, missed_votes: @congressional_member.missed_votes, missed_votes_pct: @congressional_member.missed_votes_pct, next_election: @congressional_member.next_election, ocd_id: @congressional_member.ocd_id, office: @congressional_member.office, party: @congressional_member.party, phone: @congressional_member.phone, rss_url: @congressional_member.rss_url, senate_class: @congressional_member.senate_class, seniority: @congressional_member.seniority, short_title: @congressional_member.short_title, state: @congressional_member.state, state_rank: @congressional_member.state_rank, suffix: @congressional_member.suffix, title: @congressional_member.title, total_present: @congressional_member.total_present, total_votes: @congressional_member.total_votes, twitter_account: @congressional_member.twitter_account, url: @congressional_member.url, votes_against_party_pct: @congressional_member.votes_against_party_pct, votes_with_party_pct: @congressional_member.votes_with_party_pct, votesmart_id: @congressional_member.votesmart_id, youtube_account: @congressional_member.youtube_account } }
    end

    assert_redirected_to congressional_member_url(CongressionalMember.last)
  end

  test "should show congressional_member" do
    get congressional_member_url(@congressional_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_congressional_member_url(@congressional_member)
    assert_response :success
  end

  test "should update congressional_member" do
    patch congressional_member_url(@congressional_member), params: { congressional_member: { bio_directory_id: @congressional_member.bio_directory_id, contact_form: @congressional_member.contact_form, cook_pvi: @congressional_member.cook_pvi, crp_id: @congressional_member.crp_id, cspan_id: @congressional_member.cspan_id, date_of_birth: @congressional_member.date_of_birth, dw_nominate: @congressional_member.dw_nominate, facebook_account: @congressional_member.facebook_account, fax: @congressional_member.fax, fec_candidate_id: @congressional_member.fec_candidate_id, first_name: @congressional_member.first_name, gender: @congressional_member.gender, google_entity_id: @congressional_member.google_entity_id, govtrack_id: @congressional_member.govtrack_id, icpsr_id: @congressional_member.icpsr_id, ideal_point: @congressional_member.ideal_point, in_office: @congressional_member.in_office, last_name: @congressional_member.last_name, leadership_role: @congressional_member.leadership_role, lis_id: @congressional_member.lis_id, middle_name: @congressional_member.middle_name, missed_votes: @congressional_member.missed_votes, missed_votes_pct: @congressional_member.missed_votes_pct, next_election: @congressional_member.next_election, ocd_id: @congressional_member.ocd_id, office: @congressional_member.office, party: @congressional_member.party, phone: @congressional_member.phone, rss_url: @congressional_member.rss_url, senate_class: @congressional_member.senate_class, seniority: @congressional_member.seniority, short_title: @congressional_member.short_title, state: @congressional_member.state, state_rank: @congressional_member.state_rank, suffix: @congressional_member.suffix, title: @congressional_member.title, total_present: @congressional_member.total_present, total_votes: @congressional_member.total_votes, twitter_account: @congressional_member.twitter_account, url: @congressional_member.url, votes_against_party_pct: @congressional_member.votes_against_party_pct, votes_with_party_pct: @congressional_member.votes_with_party_pct, votesmart_id: @congressional_member.votesmart_id, youtube_account: @congressional_member.youtube_account } }
    assert_redirected_to congressional_member_url(@congressional_member)
  end

  test "should destroy congressional_member" do
    assert_difference('CongressionalMember.count', -1) do
      delete congressional_member_url(@congressional_member)
    end

    assert_redirected_to congressional_members_url
  end
end

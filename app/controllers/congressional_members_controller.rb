class CongressionalMembersController < ApplicationController
  before_action :set_congressional_member, only: [:show, :edit, :update, :destroy]

  # GET /congressional_members
  # GET /congressional_members.json
  def index
    @congressional_members = CongressionalMember.all
  end

  # GET /congressional_members/1
  # GET /congressional_members/1.json
  def show
  end

  # GET /congressional_members/new
  def new
    @congressional_member = CongressionalMember.new
  end

  # GET /congressional_members/1/edit
  def edit
  end

  # POST /congressional_members
  # POST /congressional_members.json
  def create
    @congressional_member = CongressionalMember.new(congressional_member_params)

    respond_to do |format|
      if @congressional_member.save
        format.html { redirect_to @congressional_member, notice: 'Congressional member was successfully created.' }
        format.json { render :show, status: :created, location: @congressional_member }
      else
        format.html { render :new }
        format.json { render json: @congressional_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /congressional_members/1
  # PATCH/PUT /congressional_members/1.json
  def update
    respond_to do |format|
      if @congressional_member.update(congressional_member_params)
        format.html { redirect_to @congressional_member, notice: 'Congressional member was successfully updated.' }
        format.json { render :show, status: :ok, location: @congressional_member }
      else
        format.html { render :edit }
        format.json { render json: @congressional_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congressional_members/1
  # DELETE /congressional_members/1.json
  def destroy
    @congressional_member.destroy
    respond_to do |format|
      format.html { redirect_to congressional_members_url, notice: 'Congressional member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_congressional_member
      @congressional_member = CongressionalMember.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def congressional_member_params
      params.require(:congressional_member).permit(:title, :short_title, :bio_directory_id, :first_name, :middle_name, :last_name, :suffix, :date_of_birth, :gender, :party, :leadership_role, :twitter_account, :facebook_account, :youtube_account, :govtrack_id, :cspan_id, :votesmart_id, :icpsr_id, :crp_id, :google_entity_id, :fec_candidate_id, :url, :rss_url, :contact_form, :in_office, :cook_pvi, :dw_nominate, :ideal_point, :seniority, :next_election, :total_votes, :missed_votes, :total_present, :ocd_id, :office, :phone, :fax, :state, :senate_class, :state_rank, :lis_id, :missed_votes_pct, :votes_with_party_pct, :votes_against_party_pct)
    end
end

class CreateTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :terms do |t|
      t.belongs_to :congress, null: false, foreign_key: true
      t.belongs_to :congressional_member, null: false, foreign_key: true
      t.belongs_to :congressional_chamber, null: false, foreign_key: true
      t.string :title
      t.string :short_title
      t.string :state
      t.string :party
      t.string :leadership_role
      t.string :fec_candidate_id
      t.string :seniority
      t.string :district
      t.boolean :at_large
      t.string :ocd_id
      t.date :start_date
      t.date :end_date
      t.string :office
      t.string :phone
      t.string :fax
      t.string :contact_form
      t.string :cook_pvi
      t.float :dw_nominate
      t.string :ideal_point
      t.string :next_election
      t.integer :total_votes
      t.integer :missed_votes
      t.integer :total_present
      t.string :senate_class
      t.string :state_rank
      t.string :lis_id
      t.integer :bills_sponsored
      t.integer :bills_cosponsored
      t.float :missed_votes_pct
      t.float :votes_with_party_pct
      t.float :votes_against_party_pct

      t.timestamps
    end
  end
end

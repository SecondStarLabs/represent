class CreateCommitteeMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :committee_memberships do |t|
      t.belongs_to :term, null: false, foreign_key: true
      t.belongs_to :committee, null: false, foreign_key: true
      t.string :side
      t.string :title
      t.integer :rank_in_party
      t.string :begin_date
      t.string :end_date

      t.timestamps
    end
  end
end

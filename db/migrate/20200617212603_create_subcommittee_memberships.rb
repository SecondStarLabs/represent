class CreateSubcommitteeMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :subcommittee_memberships do |t|
      t.belongs_to :term, null: false, foreign_key: true
      t.belongs_to :subcommittee, null: false, foreign_key: true
      t.string :side
      t.string :title
      t.integer :rank_in_party
      t.string :begin_date
      t.string :end_date

      t.timestamps
    end
  end
end

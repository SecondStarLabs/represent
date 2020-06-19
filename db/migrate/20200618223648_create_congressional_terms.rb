class CreateCongressionalTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :congressional_terms do |t|
      t.belongs_to :congress, null: false, foreign_key: true
      t.belongs_to :congressional_chamber, null: false, foreign_key: true

      t.timestamps
    end
  end
end

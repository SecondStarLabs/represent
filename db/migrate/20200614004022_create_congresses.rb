class CreateCongresses < ActiveRecord::Migration[6.0]
  def change
    create_table :congresses do |t|
      t.belongs_to :congressional_member, null: false, foreign_key: true
      t.belongs_to :congressional_chamber, null: false, foreign_key: true
      t.integer :congress_number

      t.timestamps
    end
  end
end

class CreateCommittees < ActiveRecord::Migration[6.0]
  def change
    create_table :committees do |t|
      t.string :name
      t.string :code
      t.text :api_uri
      t.belongs_to :congress, null: false, foreign_key: true

      t.timestamps
    end
  end
end

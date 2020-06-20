class CreateCongresses < ActiveRecord::Migration[6.0]
  def change
    create_table :congresses do |t|
      t.integer :congress_number

      t.timestamps
    end
  end
end

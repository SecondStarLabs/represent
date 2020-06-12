class CreateCongressionalChambers < ActiveRecord::Migration[6.0]
  def change
    create_table :congressional_chambers do |t|
      t.string :name

      t.timestamps
    end
  end
end

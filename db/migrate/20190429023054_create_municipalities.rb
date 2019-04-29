class CreateMunicipalities < ActiveRecord::Migration[5.2]
  def change
    create_table :municipalities do |t|
      t.string :name
      t.datetime :foundation_year
      t.string :URL
      t.string :mail
      t.references :mayor, foreign_key: true

      t.timestamps
    end
  end
end

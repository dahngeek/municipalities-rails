class CreateNeighborhoods < ActiveRecord::Migration[5.2]
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.integer :block_count
      t.integer :population
      t.references :municipality, foreign_key: true

      t.timestamps
    end
  end
end

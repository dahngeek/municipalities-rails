class CreateMayors < ActiveRecord::Migration[5.2]
  def change
    create_table :mayors do |t|
      t.string :name
      t.string :last_name
      t.string :nacionality
      t.string :mail
      t.integer :phone

      t.timestamps
    end
  end
end

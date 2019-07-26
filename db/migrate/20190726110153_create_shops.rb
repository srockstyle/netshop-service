class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.integer :owner_id
      t.string :name
      t.text :description
      t.boolean :open
      t.boolean :delete

      t.timestamps
    end
  end
end

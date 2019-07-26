class CreateItemSales < ActiveRecord::Migration[6.0]
  def change
    create_table :item_sales do |t|
      t.integer :item_id

      t.timestamps
    end
  end
end

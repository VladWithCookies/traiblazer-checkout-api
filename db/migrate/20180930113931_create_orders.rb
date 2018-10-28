class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :item_total, precision: 12, scale: 2, default: '0.0'
      t.decimal :shipment_amount, precision: 12, scale: 2, default: '0.0'
      t.decimal :tax_amount, precision: 12, scale: 2, default: '0.0'
      t.decimal :total, precision: 12, scale: 2, default: '0.0'
      t.integer :state, default: 0
      
      t.timestamps
    end
  end
end

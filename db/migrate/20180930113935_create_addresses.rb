class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :country
      t.string :zip_code
      t.string :kind

      t.references :addressable, polymorphic: true, index: true
      t.timestamps
    end
  end
end

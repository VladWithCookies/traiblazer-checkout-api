class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|
      t.string :month
      t.string :year
      t.string :last_digits
      t.string :name
      t.string :cc_type

      t.timestamps
    end
  end
end

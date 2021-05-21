class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.integer :invoice_id
      t.integer :amount
      t.integer :payment_method_id

      t.timestamps
    end
  end
end

class CreateDonations < ActiveRecord::Migration[7.2]
  def change
    create_table :donations do |t|
      t.decimal :amount, precision: 10, scale: 2, null: false
      t.string :payment_method_id, null: false
      t.boolean :recurring, default: false
      t.string :status, default: 'completed'
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

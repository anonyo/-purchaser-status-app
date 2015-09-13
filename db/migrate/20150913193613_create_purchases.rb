class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :status, default: 'pending', null: false

      t.timestamps
    end
  end
end

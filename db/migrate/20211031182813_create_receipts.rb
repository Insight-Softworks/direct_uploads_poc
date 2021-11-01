class CreateReceipts < ActiveRecord::Migration[6.1]
  def change
    create_table :receipts do |t|
      t.string :title
      t.text :description
      t.decimal :amount

      t.timestamps
    end
  end
end

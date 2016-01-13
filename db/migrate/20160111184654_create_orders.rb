class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.text :message
      t.belongs_to :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

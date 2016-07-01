class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :url
      t.boolean :check,  :default => false
      t.integer :send_number,  :default => 0
      t.timestamps null: false
    end
    add_index :requests, [:url]
  end
end

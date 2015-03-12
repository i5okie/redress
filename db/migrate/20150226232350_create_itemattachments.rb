class CreateItemattachments < ActiveRecord::Migration
  def change
    create_table :itemattachments do |t|
      t.integer :item_id
      t.integer :attachment_id

      t.timestamps null: false
    end
  end
end

class CreateItemattachments < ActiveRecord::Migration
  def change
    create_table :itemattachments do |t|
      t.string :item_id
      t.string :attachment_id

      t.timestamps null: false
    end
  end
end

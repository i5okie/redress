class CreateItemdocuments < ActiveRecord::Migration
  def change
    create_table :itemdocuments do |t|
      t.integer :item_id
      t.integer :document_id

      t.timestamps null: false
    end
  end
end

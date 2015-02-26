class CreateItemdocuments < ActiveRecord::Migration
  def change
    create_table :itemdocuments do |t|
      t.string :item_id
      t.string :document_id

      t.timestamps null: false
    end
  end
end

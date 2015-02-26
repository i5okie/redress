class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.references :manufacturer, index: true
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :items, :manufacturers
    add_foreign_key :items, :categories
  end
end

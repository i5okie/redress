class AddRelationsToItems < ActiveRecord::Migration
  def change
    add_foreign_key :items, :manufacturers
    add_foreign_key :items, :categories
  end
end

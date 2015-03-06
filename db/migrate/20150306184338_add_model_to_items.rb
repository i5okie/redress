class AddModelToItems < ActiveRecord::Migration
  def change
    add_column :items, :model, :string
  end
end

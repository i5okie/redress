class AddModelnameToItems < ActiveRecord::Migration
  def change
    remove_column :items, :model, :string
    add_column :items, :modelname, :string
  end
end

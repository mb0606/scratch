class RemoveColumntWikis < ActiveRecord::Migration
  def up
    remove_column :wikis, :tile
    add_column :wikis, :title, :string
  end

  def down
  end
end

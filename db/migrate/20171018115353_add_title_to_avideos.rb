class AddTitleToAvideos < ActiveRecord::Migration
  def change
    add_column :avideos, :title, :string
  end
end

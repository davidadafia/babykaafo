class AddTitleToDvideos < ActiveRecord::Migration
  def change
    add_column :dvideos, :title, :string
  end
end

class AddTitleToBvideos < ActiveRecord::Migration
  def change
    add_column :bvideos, :title, :string
  end
end

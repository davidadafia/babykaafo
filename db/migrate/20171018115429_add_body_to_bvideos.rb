class AddBodyToBvideos < ActiveRecord::Migration
  def change
    add_column :bvideos, :body, :text
  end
end

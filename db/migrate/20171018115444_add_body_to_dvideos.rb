class AddBodyToDvideos < ActiveRecord::Migration
  def change
    add_column :dvideos, :body, :text
  end
end

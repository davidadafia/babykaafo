class AddBodyToAvideos < ActiveRecord::Migration
  def change
    add_column :avideos, :body, :text
  end
end

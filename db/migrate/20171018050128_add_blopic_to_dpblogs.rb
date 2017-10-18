class AddBlopicToDpblogs < ActiveRecord::Migration
  def change
    add_column :dpblogs, :blopic, :text
  end
end

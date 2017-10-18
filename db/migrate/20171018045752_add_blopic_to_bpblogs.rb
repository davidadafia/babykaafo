class AddBlopicToBpblogs < ActiveRecord::Migration
  def change
    add_column :bpblogs, :blopic, :text
  end
end

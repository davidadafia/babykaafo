class AddBlopicToApblogs < ActiveRecord::Migration
  def change
    add_column :apblogs, :blopic, :text
  end
end

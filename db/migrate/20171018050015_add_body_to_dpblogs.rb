class AddBodyToDpblogs < ActiveRecord::Migration
  def change
    add_column :dpblogs, :body, :text
  end
end

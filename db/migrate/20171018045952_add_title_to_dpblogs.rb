class AddTitleToDpblogs < ActiveRecord::Migration
  def change
    add_column :dpblogs, :title, :string
  end
end

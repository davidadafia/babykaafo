class AddTitleToApblogs < ActiveRecord::Migration
  def change
    add_column :apblogs, :title, :string
  end
end

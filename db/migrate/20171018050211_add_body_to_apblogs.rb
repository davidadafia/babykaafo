class AddBodyToApblogs < ActiveRecord::Migration
  def change
    add_column :apblogs, :body, :text
  end
end

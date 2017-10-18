class AddBodyToBpblogs < ActiveRecord::Migration
  def change
    add_column :bpblogs, :body, :text
  end
end

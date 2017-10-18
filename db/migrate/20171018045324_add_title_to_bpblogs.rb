class AddTitleToBpblogs < ActiveRecord::Migration
  def change
    add_column :bpblogs, :title, :string
  end
end

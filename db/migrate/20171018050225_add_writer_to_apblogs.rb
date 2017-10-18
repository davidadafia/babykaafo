class AddWriterToApblogs < ActiveRecord::Migration
  def change
    add_column :apblogs, :writer, :string
  end
end

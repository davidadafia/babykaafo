class AddWriterToDpblogs < ActiveRecord::Migration
  def change
    add_column :dpblogs, :writer, :string
  end
end

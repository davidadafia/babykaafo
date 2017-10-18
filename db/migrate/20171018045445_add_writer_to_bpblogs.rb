class AddWriterToBpblogs < ActiveRecord::Migration
  def change
    add_column :bpblogs, :writer, :string
  end
end

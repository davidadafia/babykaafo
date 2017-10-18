class AddTitleToDinfos < ActiveRecord::Migration
  def change
    add_column :dinfos, :title, :string
  end
end

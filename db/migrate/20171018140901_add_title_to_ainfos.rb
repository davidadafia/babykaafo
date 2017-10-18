class AddTitleToAinfos < ActiveRecord::Migration
  def change
    add_column :ainfos, :title, :string
  end
end

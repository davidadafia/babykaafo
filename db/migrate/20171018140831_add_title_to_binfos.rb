class AddTitleToBinfos < ActiveRecord::Migration
  def change
    add_column :binfos, :title, :string
  end
end

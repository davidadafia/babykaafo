class AddBodyToBinfos < ActiveRecord::Migration
  def change
    add_column :binfos, :body, :text
  end
end

class AddBodyToDinfos < ActiveRecord::Migration
  def change
    add_column :dinfos, :body, :text
  end
end

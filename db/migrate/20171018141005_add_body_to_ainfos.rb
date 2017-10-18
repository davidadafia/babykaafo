class AddBodyToAinfos < ActiveRecord::Migration
  def change
    add_column :ainfos, :body, :text
  end
end

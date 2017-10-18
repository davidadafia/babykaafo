class CreateAinfos < ActiveRecord::Migration
  def change
    create_table :ainfos do |t|

      t.timestamps null: false
    end
  end
end

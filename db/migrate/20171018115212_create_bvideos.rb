class CreateBvideos < ActiveRecord::Migration
  def change
    create_table :bvideos do |t|

      t.timestamps null: false
    end
  end
end

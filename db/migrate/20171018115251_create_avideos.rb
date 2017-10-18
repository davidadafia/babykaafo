class CreateAvideos < ActiveRecord::Migration
  def change
    create_table :avideos do |t|

      t.timestamps null: false
    end
  end
end

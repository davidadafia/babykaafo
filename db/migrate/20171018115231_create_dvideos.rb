class CreateDvideos < ActiveRecord::Migration
  def change
    create_table :dvideos do |t|

      t.timestamps null: false
    end
  end
end

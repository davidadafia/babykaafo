class CreateDpblogs < ActiveRecord::Migration
  def change
    create_table :dpblogs do |t|

      t.timestamps null: false
    end
  end
end

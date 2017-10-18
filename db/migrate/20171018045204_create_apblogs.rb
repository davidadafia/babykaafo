class CreateApblogs < ActiveRecord::Migration
  def change
    create_table :apblogs do |t|

      t.timestamps null: false
    end
  end
end

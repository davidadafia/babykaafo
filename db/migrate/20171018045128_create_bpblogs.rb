class CreateBpblogs < ActiveRecord::Migration
  def change
    create_table :bpblogs do |t|

      t.timestamps null: false
    end
  end
end

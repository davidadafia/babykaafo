class CreateBinfos < ActiveRecord::Migration
  def change
    create_table :binfos do |t|

      t.timestamps null: false
    end
  end
end

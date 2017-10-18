class CreateDinfos < ActiveRecord::Migration
  def change
    create_table :dinfos do |t|

      t.timestamps null: false
    end
  end
end

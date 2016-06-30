class CreatePicturetests < ActiveRecord::Migration
  def change
    create_table :picturetests do |t|
      t.string :hint
      t.string :picture
      t.string :answer

      t.timestamps null: false
    end
  end
end

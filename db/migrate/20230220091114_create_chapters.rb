class CreateChapters < ActiveRecord::Migration[7.0]
  def change
    create_table :chapters do |t|
      t.string :title, null: false, default: ""
      t.integer :duration, null: false, default: 0
     

      t.timestamps
    end
  end
end

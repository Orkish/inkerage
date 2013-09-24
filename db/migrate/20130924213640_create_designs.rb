class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :title
      t.string :body_location
      t.string :artist
      t.text :story

      t.timestamps
    end
  end
end

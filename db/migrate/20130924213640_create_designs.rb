class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :url
      t.belongs_to :user
      t.belongs_to :artist
      
      t.timestamps
    end
  end
end

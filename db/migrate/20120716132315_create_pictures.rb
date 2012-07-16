class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      t.text :note
      t.boolean :favorite

      t.timestamps
    end
  end
end

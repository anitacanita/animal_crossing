class CreateVillagers < ActiveRecord::Migration[6.0]
  def change
    create_table :villagers do |t|
      t.string :name
      t.string :species
      t.string :gender
      t.string :personality
      t.string :subtype
      t.string :hobby
      t.string :birthday
      t.string :catchphrase
      t.string :favorite_song
      t.string :favorite_saying
      t.string :style_1
      t.string :style_2
      t.string :color_1
      t.string :color_2

      t.timestamps
    end
  end
end

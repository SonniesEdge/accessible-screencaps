class CreateEssays < ActiveRecord::Migration
  def change
    create_table :essays do |t|
      t.string :title
      t.text :body
      t.integer :font_size
      t.string :font_colour
      t.string :background_color
      t.string :font_type

      t.timestamps null: false
    end
  end
end

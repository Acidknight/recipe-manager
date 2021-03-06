class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.text :instructions
      t.integer :preparation_time
      t.integer :rating
      t.integer :user_id

      t.timestamps
    end
  end
end

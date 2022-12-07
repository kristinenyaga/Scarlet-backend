class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.string :category
      t.string :image_url
      t.integer :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
